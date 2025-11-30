class Badge {
    public String print(Integer id, String name, String department) {

        String dispId = id == null ? "" : "[" + id + "] - ";
        String dispDept = " - " + (department == null ? "OWNER" : department.toUpperCase());

        return dispId + name + dispDept;
    }
}
