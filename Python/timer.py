class Timer:
    def __init__(self, hours=0, minutes=0, seconds=0):
        self.__hours = hours
        self.__minutes = minutes
        self.__seconds = seconds

    def __str__(self):
            if self.__hours <= 9:
                self.show_hours = "0" + str(self.__hours)
            else:
                self.show_hours = self.__hours

            if self.__minutes <= 9:
                self.show_minutes = "0" + str(self.__minutes)
            else:
                self.show_minutes = self.__minutes

            if self.__seconds <= 9:
                self.show_seconds = "0" + str(self.__seconds)
            else:
                self.show_seconds = self.__seconds

            return str(self.show_hours) + ":" + str(self.show_minutes) + ":" + str(self.show_seconds)

    def next_second(self):
        if self.__seconds < 59:
            self.__seconds += 1
        elif self.__minutes < 59 and self.__seconds == 59:
            self.__minutes += 1
            self.__seconds = 0
        elif self.__hours < 23 and self.__minutes == 59 and self.__seconds == 59:
            self.__hours += 1
            self.__minutes = 0
            self.__seconds = 0
        else:
            self.__hours = 0
            self.__minutes = 0
            self.__seconds = 0

        return self.__hours, self.__minutes, self.__seconds

    def prev_second(self):
        if self.__seconds > 0:
            self.__seconds -= 1
        elif self.__minutes > 0 and self.__seconds == 0:
            self.__minutes -= 1
            self.__seconds = 59
        elif self.__hours > 0 and self.__minutes == 0 and self.__seconds == 0:
            self.__hours -= 1
            self.__minutes = 59
            self.__seconds = 59
        else:
            self.__hours = 23
            self.__minutes = 59
            self.__seconds = 59

        return self.__hours, self.__minutes, self.__seconds

timer = Timer(23, 59, 59)
print("Current time is:\n", timer)
timer.next_second()
print("Next second will result in:\n", timer)
timer.prev_second()
print("Previous second will result in:\n", timer)
timer.prev_second()
print("Another previous second will result in:\n", timer)
