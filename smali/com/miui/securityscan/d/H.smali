.class final Lcom/miui/securityscan/d/H;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string/jumbo v0, "newcheck_result_slide_down"

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Lb(Ljava/lang/String;)V

    return-void
.end method
