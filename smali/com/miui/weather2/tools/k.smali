.class Lcom/miui/weather2/tools/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/miui/weather2/tools/AdViewTrigger;

.field final synthetic c:Lcom/miui/weather2/tools/AdViewTrigger$LandingPageListener;


# direct methods
.method constructor <init>(Lcom/miui/weather2/tools/AdViewTrigger$LandingPageListener;ILcom/miui/weather2/tools/AdViewTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/tools/k;->c:Lcom/miui/weather2/tools/AdViewTrigger$LandingPageListener;

    iput p2, p0, Lcom/miui/weather2/tools/k;->a:I

    iput-object p3, p0, Lcom/miui/weather2/tools/k;->b:Lcom/miui/weather2/tools/AdViewTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3e9

    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/miui/weather2/tools/k;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/weather2/tools/k;->b:Lcom/miui/weather2/tools/AdViewTrigger;

    invoke-static {v1}, Lcom/miui/weather2/tools/AdViewTrigger;->b(Lcom/miui/weather2/tools/AdViewTrigger;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
