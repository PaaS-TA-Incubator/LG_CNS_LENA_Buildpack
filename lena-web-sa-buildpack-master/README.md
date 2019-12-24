# LENA WEB buildpack

레나 WEB proxy 서버를 Paas-ta / Cloud Foundry 에 적용하기위한 Buildpack 을 제공한다.

## How to
* 레나 WEB 서버 적용을 위해서는 proxy.conf 파일이 필요하다.
  proxy.conf 파일의 ProxyPassMatch 는 정규표현식과  URL 로 구성된다.
  정규표현식에 해당하는 호출이 발생하면 URL에 해당하는 원격서버로 호출이 진행된다.
  아래 예제는 모든 호출을 google로 전달하는 예제이다.
<pre><code>ProxyPassMatch ^/.*$ http://www.google.com</pre></code>
* lena-web-sa-buildpack/sample 디렉토리에 proxy.conf , manifest.yml 예제가 포함되어있다.
* cf push 시 빌드팩을 LENA WEB 으로 지정한다.
<pre><code>cf push -b https://github.com/lenalaborg/lena-web-buildpack1.0.git</pre></code>

