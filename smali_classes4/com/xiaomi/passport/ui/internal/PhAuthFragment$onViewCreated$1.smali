.class final Lcom/xiaomi/passport/ui/internal/PhAuthFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "FragmentGetPhAuthMethod.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/PhAuthFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/PhAuthFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhAuthFragment$onViewCreated$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhAuthFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhAuthFragment$onViewCreated$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhAuthFragment;

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->getPresenter()Lcom/xiaomi/passport/ui/internal/PhAuthContract$Presenter;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthFragment$onViewCreated$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhAuthFragment;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->getMPhoneViewWrapper()Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;->getPhoneWrapper()Lcom/xiaomi/passport/ui/internal/PhoneWrapper;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Lcom/xiaomi/passport/ui/internal/PhAuthContract$Presenter;->getPhoneAuthMethod(Lcom/xiaomi/passport/ui/internal/PhoneWrapper;)V

    return-void
.end method
