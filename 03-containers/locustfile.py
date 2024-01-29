from locust import HttpUser, task

class SimpleAppUser(HttpUser):
    @task
    def my_app(self):
        self.client.get("/")