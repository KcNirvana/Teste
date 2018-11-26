.class final Lcom/miui/gamebooster/ui/aC;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic eg:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/aC;->eg:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/gamebooster/gamead/Advertisement;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/aC;->eg:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    const-string/jumbo v2, "VIEW"

    invoke-virtual {v1, v2, v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dj(Ljava/lang/String;Lcom/miui/gamebooster/gamead/Advertisement;)V

    return-void
.end method
