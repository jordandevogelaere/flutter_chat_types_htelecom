enum Channels {
  sms("SMS"),
  whatsapp("Whatsapp");

  final String value;

  // can use named parameters if you want
  const Channels(this.value);
}
