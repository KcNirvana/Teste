.class final Lcom/xiaomi/passport/ui/internal/PhAuthFragment$onViewCreated$2;
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

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhAuthFragment$onViewCreated$2;->this$0:Lcom/xiaomi/passport/ui/internal/PhAuthFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhAuthFragment$onViewCreated$2;->this$0:Lcom/xiaomi/passport/ui/internal/PhAuthFragment;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthFragment$onViewCreated$2;->this$0:Lcom/xiaomi/passport/ui/internal/PhAuthFragment;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->getIdPswAuthProvider()Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PhAuthFragment$onViewCreated$2;->this$0:Lcom/xiaomi/passport/ui/internal/PhAuthFragment;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "sid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "arguments!!.getString(\"sid\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;->getFragment(Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/xiaomi/passport/ui/internal/SignInContract$View$DefaultImpls;->gotoFragment$default(Lcom/xiaomi/passport/ui/internal/SignInContract$View;Landroid/support/v4/app/Fragment;ZILjava/lang/Object;)V

    return-void
.end method
