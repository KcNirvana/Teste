.class Lcom/ali/user/mobile/common/ui/f;
.super Ljava/lang/Object;
.source "AbsVerifySmsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/common/ui/f;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/f;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->access$400(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)Lcom/ali/user/mobile/util/ResizeScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/util/ResizeScrollView;->forceLayout()V

    return-void
.end method
