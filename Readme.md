<body style="font-family: Arial, sans-serif; line-height:1.6; background:#f4f7f8; color:#2c3e50; padding:25px;">

<h1 style="color:#2980b9;">🚀 Travifai Project</h1>
<p>A <strong>Dockerized web app</strong> deployed on <strong>AWS EC2</strong>. Automated deployment via <strong>GitHub Actions</strong> with logs stored in <strong>S3</strong>.</p>

<hr style="border:1px solid #bdc3c7; margin:20px 0;">

<h2 style="color:#16a085;">✨ Features</h2>
<ul>
  <li>Automatic deployment to EC2 on push to <code>main</code></li>
  <li>Docker container: <code>travifai_project:v.1</code> running on port <code>8080</code></li>
  <li>Container logs uploaded to S3 in timestamped folders</li>
</ul>

<h2 style="color:#e67e22;">🛠️ Quick Setup</h2>

<h3 style="color:#2980b9;">1️⃣ Clone Repository</h3>
<pre style="background:#ecf0f1; padding:10px; border-radius:5px;"><code>git clone https://github.com/your-username/Travifai_project.git
cd Travifai_project</code></pre>

<h3 style="color:#2980b9;">2️⃣ EC2 Setup</h3>
<pre style="background:#ecf0f1; padding:10px; border-radius:5px;"><code>sudo apt update
sudo apt install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker
</code></pre>

<p>Optional: Install AWS CLI if EC2 uploads logs:</p>
<pre style="background:#ecf0f1; padding:10px; border-radius:5px;"><code>curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws configure</code></pre>

<h3 style="color:#2980b9;">3️⃣ GitHub Secrets</h3>
<p>Add the following secrets in <strong>Settings → Secrets → Actions</strong>:</p>
<table style="border-collapse: collapse; width: 100%; margin:10px 0;">
  <tr style="background:#16a085; color:white;">
    <th style="padding:8px;">Secret</th>
    <th style="padding:8px;">Value</th>
  </tr>
  <tr><td style="padding:8px;">EC2_HOST</td><td style="padding:8px;">EC2 public IP</td></tr>
  <tr><td style="padding:8px;">EC2_USER</td><td style="padding:8px;">ubuntu</td></tr>
  <tr><td style="padding:8px;">EC2_SSH_KEY</td><td style="padding:8px;">PEM private key content</td></tr>
</table>
<p>⚠️ AWS keys are <strong>not needed</strong> if EC2 uploads logs to S3.</p>

<h3 style="color:#2980b9;">4️⃣ Access the App</h3>
<p>Open in browser: <a href="http://43.205.235.177:8080/" style="color:#e74c3c;" target="_blank">http://43.205.235.177:8080/</a></p>

<h3 style="color:#2980b9;">5️⃣ Logs</h3>
<p>Logs stored in S3 in timestamped folders:</p>
<pre style="background:#ecf0f1; padding:10px; border-radius:5px;"><code>s3://travifai-project-logs/Project-logs/YYYY-MM-DD-HH-MM-SS/container.log</code></pre>

<h2 style="color:#e67e22;">⚠️ Notes</h2>
<ul>
  <li>Ensure Docker is running on EC2</li>
  <li>Port <code>8080</code> must be open in EC2 security group</li>
  <li>Workflow triggers automatically on pushes to <code>main</code></li>
</ul>

<p style="color:#c0392b;"><em>🌟 Automated deployment, Docker container management, and centralized logging on S3.</em></p>

</body>
