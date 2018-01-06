.class Lcom/miui/weather2/bd$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/miui/weather2/bd$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/bd$a;->a:Landroid/content/Context;

    const-string v1, "default channel"

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/ah;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/bd$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/bd$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/e;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/weather2/push/d;->a()Lcom/miui/weather2/push/d;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/bd$a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/push/d;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/weather2/push/d;->a()Lcom/miui/weather2/push/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/push/d;->b()V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/bd$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->init(Landroid/content/Context;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/bd$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
