.class Lcom/ali/user/mobile/ui/widget/t;
.super Ljava/lang/Object;
.source "APTitleBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/ui/widget/APTitleBar;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/ui/widget/APTitleBar;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/t;->a:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/t;->a:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->access$000(Lcom/ali/user/mobile/ui/widget/APTitleBar;)Lcom/ali/user/mobile/ui/widget/APProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
