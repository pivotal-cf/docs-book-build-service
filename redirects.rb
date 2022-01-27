# Redirect all production http traffic to https
r301 %r{.*}, 'https://docs.pivotal.io$&', :if => Proc.new { |rack_env|
  rack_env['SERVER_NAME'] == 'docs.pivotal.io' && rack_env['HTTP_X_FORWARDED_PROTO'] == 'http'
}

# Redirects from platform/application-service-windows to /application-service-windows
r301 %r{/platform/application-service-windows/2-12/(.*)}, '/application-service/2-12/windows/$1'

# Redirects from application-service-windows to application-service/windows
r301 %r{/application-service-windows/2-12/(.*)}, '/application-service/2-12/windows/$1'

# Redirects for docs-book-healthwatch

r301 %r{/application-service-windows/(?![\d-]+)(.*)}, "/application-service/2-11/windows/$1"
r301 %r'/application-service-windows/2-8/upgrade-2012r2-to-pasw.html', '/application-service/2-7/upgrade-2012r2-to-pasw.html'

r301 %r{/platform/application-service-windows/(?![\d-]+)(.*)}, "/application-service-windows/2-1/$1"
r301 %r'/platform/application-service-windows/2-8/upgrade-2012r2-to-pasw.html', '/application-service/2-7/windows/upgrade-2012r2-to-pasw.html'
