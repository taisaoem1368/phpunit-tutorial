<?php
namespace Tests;

use PHPUnit\Framework\TestCase;
use App\UrlSlug;

class UrlSlugTest extends TestCase
{

  public function testInvokeMethodStringPrivateReturnString()
  {
    $string = 'private';
    $url = new UrlSlug();

    $result1 = $this->invokeMethod($url, 'funcStringPrivate', [$string]);
    $result2 = $this->invokeMethod($url, 'funcStringProtected', [$string]);

    $this->assertEquals($string, $result1);
    $this->assertEquals($string, $result2);
  }

  public function testFuncStringPrivateReturnsXYZWhenStringIsABC()
  {
    $string = 'abc';
    $url = new UrlSlug();
    $result = $this->invokeMethod($url, 'funcStringPrivate', [$string]);
    $this->assertEquals('xyz', $result);
  }

  public function invokeMethod(&$object, $methodName, array $parameters = array())
  {
      $reflection = new \ReflectionClass(get_class($object));
      $method = $reflection->getMethod($methodName);
      $method->setAccessible(true);
      return $method->invokeArgs($object, $parameters);
  }

  /**
   * @dataProvider providerTestSlugifyReturnsSlugifyString
   */
  public function testSlugifyReturnsSlugifyString($input, $output)
  {
    $url = new UrlSlug();
    $result = $url->slugify($input);

    $this->assertEquals($output, $result);
  }

  public function providerTestSlugifyReturnsSlugifyString()
  {
    return [
      ['test slugify returns slugify string', 'test-slugify-returns-slugify-string'],
      [' 333 test 11 slugify11 returns222 slugify string', '333-test-11-slugify11-returns222-slugify-string'],
      ['test @@@\\Special !@#!@#() \\//Characters### @!Returns &&Slugify #%String', 'test-special-characters-returns-slugify-string'],
      ['tést ÚTF8 Nö English Chäräcter Returns Slugify String', 'test-utf8-no-english-character-returns-slugify-string'],
      ['', 'n-a']
    ];
  }

}


