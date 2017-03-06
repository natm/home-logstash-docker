# Home Logstash instance in Docker

[![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/natm/home-logstash-docker/master/LICENSE)

Inherits from `logstash:5.2.2`, [Dockerfile](https://github.com/docker-library/logstash/blob/master/5/Dockerfile).

* Listens on port 514 on a dedicated IP (announced as a /32 to the Docker host).
* Posts APC UPS power failure / restoration events to Slack.
* Sends logs to a free [Loggly](http://www.loggly.com) account.

## Running it

Start with `docker run --restart=always --name logstash -p 185.61.112.99:514:5000/udp --env-file /etc/logstash/envvars -t homelogstash:latest`

## Secrets:

Are stored in `/etc/logstash/envvars` and loaded via Docker `--env-file`:

```
LOGSTASH_SLACK_WEBHOOK=https://hooks.slack.com/services/xxxxxxxx
LOGSTASH_LOGGLY_TOKEN=xxxxx
```

## License and Copyright

Copyright 2017 Nat Morris nat@nuqe.net

Licensed under the MIT License.

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
