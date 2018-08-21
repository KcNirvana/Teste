.class Lcom/ali/user/mobile/login/rds/b;
.super Ljava/lang/Object;
.source "RDSWraper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ali/user/mobile/login/rds/RDSWraper;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/rds/RDSWraper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/rds/b;->b:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iput-object p2, p0, Lcom/ali/user/mobile/login/rds/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/rds/b;->b:Lcom/ali/user/mobile/login/rds/RDSWraper;

    invoke-static {v0}, Lcom/ali/user/mobile/login/rds/RDSWraper;->b(Lcom/ali/user/mobile/login/rds/RDSWraper;)Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;

    move-result-object v1

    iget-object v0, p0, Lcom/ali/user/mobile/login/rds/b;->b:Lcom/ali/user/mobile/login/rds/RDSWraper;

    invoke-static {v0}, Lcom/ali/user/mobile/login/rds/RDSWraper;->a(Lcom/ali/user/mobile/login/rds/RDSWraper;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ali/user/mobile/login/rds/b;->a:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v4, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-double v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->onTouchScreen(Ljava/lang/String;Ljava/lang/String;DD)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RDSWraper"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
