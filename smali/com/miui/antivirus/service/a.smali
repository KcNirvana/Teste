.class Lcom/miui/antivirus/service/a;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field private auM:Lcom/miui/antivirus/service/b;

.field final synthetic auN:Lcom/miui/antivirus/service/VirusAutoUpdateJobService;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/service/VirusAutoUpdateJobService;Lcom/miui/antivirus/service/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/a;->auN:Lcom/miui/antivirus/service/VirusAutoUpdateJobService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/miui/antivirus/service/a;->auM:Lcom/miui/antivirus/service/b;

    return-void
.end method

.method static synthetic aBg(Lcom/miui/antivirus/service/a;)Lcom/miui/antivirus/service/b;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/service/a;->auM:Lcom/miui/antivirus/service/b;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/service/a;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/service/a;->auN:Lcom/miui/antivirus/service/VirusAutoUpdateJobService;

    invoke-virtual {v0}, Lcom/miui/antivirus/service/VirusAutoUpdateJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/guardprovider/a;->getInstance(Landroid/content/Context;)Lcom/miui/guardprovider/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/service/a;->auN:Lcom/miui/antivirus/service/VirusAutoUpdateJobService;

    invoke-virtual {v1}, Lcom/miui/antivirus/service/VirusAutoUpdateJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/antivirus/k;->getInstance(Landroid/content/Context;)Lcom/miui/antivirus/k;

    move-result-object v1

    new-instance v2, Lcom/miui/antivirus/service/d;

    invoke-direct {v2, p0, v0, v1}, Lcom/miui/antivirus/service/d;-><init>(Lcom/miui/antivirus/service/a;Lcom/miui/guardprovider/a;Lcom/miui/antivirus/k;)V

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/k;->aEl(Lcom/miui/guardprovider/VirusObserver;)V

    const/4 v0, 0x0

    return-object v0
.end method
