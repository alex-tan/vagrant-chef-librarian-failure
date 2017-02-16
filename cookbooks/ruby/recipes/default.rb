apt_repository 'ruby-ng' do
  uri 'ppa:brightbox/ruby-ng'
end

package 'ruby2.3' do
  action [:install, :upgrade]
end

package 'ruby2.3-dev' do
  action [:install, :upgrade]
end

package 'ruby-switch'
package 'make'

bash 'set ruby version' do
  code 'sudo ruby-switch --set ruby2.3'
end

gem_package 'librarian-chef'

