.class Lcom/miui/antivirus/activity/f;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic asc:Lcom/miui/antivirus/activity/MainActivity;


# direct methods
.method private constructor <init>(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/f;->asc:Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/activity/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/f;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/activity/f;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/activity/f;->asc:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axA(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/k;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/activity/i;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/activity/i;-><init>(Lcom/miui/antivirus/activity/f;)V

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/k;->aEl(Lcom/miui/guardprovider/VirusObserver;)V

    const/4 v0, 0x0

    return-object v0
.end method
