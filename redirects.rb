# Redirect all production http traffic to https
r301 %r{.*}, 'https://docs.pivotal.io$&', :if => Proc.new { |rack_env|
  rack_env['SERVER_NAME'] == 'docs.pivotal.io' && rack_env['HTTP_X_FORWARDED_PROTO'] == 'http'
}

# Redirects for docs-book-healthwatch

r301 %r{/application-service-windows/(?![\d-]+)(.*)}, "/application-service-windows/2-9/$1"
r301 %r'/application-service-windows/2-8/upgrade-2012r2-to-pasw.html', '/application-service-windows/2-7/upgrade-2012r2-to-pasw.html'

r301 %r{/platform/application-service-windows/(?![\d-]+)(.*)}, "/application-service-windows/2-9/$1"
r301 %r'/platform/application-service-windows/2-8/upgrade-2012r2-to-pasw.html', '/application-service-windows/2-7/upgrade-2012r2-to-pasw.html'
