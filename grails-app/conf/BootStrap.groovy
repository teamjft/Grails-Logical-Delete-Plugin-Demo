class BootStrap {

    def bootstrapService
    def init = { servletContext ->
        bootstrapService.generateTestData()
    }
    def destroy = {
    }
}
