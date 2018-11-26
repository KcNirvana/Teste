.class final Lcom/miui/appmanager/ah;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/appmanager/o;


# instance fields
.field final synthetic aWN:Lcom/miui/appmanager/AppManagerMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/ah;->aWN:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/ah;->aWN:Lcom/miui/appmanager/AppManagerMainActivity;

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-static {v0, p1, p2, v1}, Lcom/miui/appmanager/AppManagerMainActivity;->boV(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method
