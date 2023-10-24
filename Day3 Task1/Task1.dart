class Time {
  int hours;
  int minutes;
  int seconds;

  Time() {
    hours = 0;
    minutes = 0;
    seconds = 0;
  }

  Time(int h, int m, int s) {
    hours = (h >= 0 && h < 24) ? h : 0;
    minutes = (m >= 0 && m < 60) ? m : 0;
    seconds = (s >= 0 && s < 60) ? s : 0;
  }

  void show() {
    print('$hours:$minutes:$seconds');
  }

  Time operator +(Time other) {
    Time result = Time();
    int carry = 0;

    result.seconds = (seconds + other.seconds) % 60;
    carry = (seconds + other.seconds) ~/ 60;

    result.minutes = (minutes + other.minutes + carry) % 60;
    carry = (minutes + other.minutes + carry) ~/ 60;

    result.hours = (hours + other.hours + carry) % 24;

    return result;
  }

  Time operator ++() {
    seconds++;
    if (seconds >= 60) {
      seconds = 0;
      minutes++;
      if (minutes >= 60) {
        minutes = 0;
        hours = (hours + 1) % 24;
      }
    }
    return this;
  }

  Time operator ++(int) {
    Time temp = Time.clone(this);
    ++this;
    return temp;
  }

  Time operator --() {
    seconds--;
    if (seconds < 0) {
      seconds = 59;
      minutes--;
      if (minutes < 0) {
        minutes = 59;
        hours = (hours - 1 + 24) % 24;
      }
    }
    return this;
  }

  Time operator --(int) {
    Time temp = Time.clone(this);
    --this;
    return temp;
  }
}

void main() {
  Time t1 = Time(8, 30, 45);  
  Time t2 = Time(4, 15, 20);  
  Time t3 = Time();            

  
  t3 = t1 + t2;

  
  print("Result of t1 + t2: ");
  t3.show();

  
  print("Incrementing t1: ");
  (++t1).show();  // Pre-increment
  t1++.show();     // Post-increment

  
  print("Decrementing t2: ");
  (--t2).show();  // Pre-decrement
  t2--.show();     // Post-decrement
}
