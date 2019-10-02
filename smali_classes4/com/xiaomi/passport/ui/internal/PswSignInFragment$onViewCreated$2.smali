.class final Lcom/xiaomi/passport/ui/internal/PswSignInFragment$onViewCreated$2;
.super Ljava/lang/Object;
.source "FragmentIdPswAuth.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/PswSignInFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/PswSignInFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$onViewCreated$2;->this$0:Lcom/xiaomi/passport/ui/internal/PswSignInFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$onViewCreated$2;->this$0:Lcom/xiaomi/passport/ui/internal/PswSignInFragment;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$onViewCreated$2;->this$0:Lcom/xiaomi/passport/ui/internal/PswSignInFragment;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->getMWebAuth()Lcom/xiaomi/passport/ui/internal/WebAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/WebAuth;->getFindPswFragment()Lcom/xiaomi/passport/ui/internal/SignInFragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->gotoFragment(Landroid/support/v4/app/Fragment;Z)V

    return-void
.end method
