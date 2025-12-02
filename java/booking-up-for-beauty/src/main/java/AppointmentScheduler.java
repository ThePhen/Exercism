import java.time.LocalDate;
import java.time.LocalDateTime;

class AppointmentScheduler {
    public LocalDateTime schedule(String appointmentDateDescription) {
        return LocalDateTime.parse(appointmentDateDescription);
    }

    public boolean hasPassed(LocalDateTime appointmentDate) {
        return appointmentDate.isBefore(LocalDateTime.now());
    }

    public boolean isAfternoonAppointment(LocalDateTime appointmentDate) {
        LocalDateTime noon = appointmentDate.withHour(12).withMinute(0).withSecond(0);
        LocalDateTime onePm = noon.withHour(13);
        System.out.println(noon);
        System.out.println(onePm);
        return appointmentDate.isEqual(noon) || (appointmentDate.isAfter(noon) && appointmentDate.isBefore(onePm));
    }

    public String getDescription(LocalDateTime appointmentDate) {
        throw new UnsupportedOperationException("Please implement the AppointmentScheduler.getDescription() method");
    }

    public LocalDate getAnniversaryDate() {
        return LocalDate.now().withMonth(9).withDayOfMonth(15);
    }
}
