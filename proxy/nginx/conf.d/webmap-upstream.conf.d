upstream webmap {
  server webmap max_fails=0 fail_timeout=20s;
  keepalive 64;
}
