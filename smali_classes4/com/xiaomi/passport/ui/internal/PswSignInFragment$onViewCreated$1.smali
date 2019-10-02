.class final Lcom/xiaomi/passport/ui/internal/PswSignInFragment$onViewCreated$1;
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

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$onViewCreated$1;->this$0:Lcom/xiaomi/passport/ui/internal/PswSignInFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$onViewCreated$1;->this$0:Lcom/xiaomi/passport/ui/internal/PswSignInFragment;

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->getMSignInUserId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$onViewCreated$1;->this$0:Lcom/xiaomi/passport/ui/internal/PswSignInFragment;

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->getMSignInUserId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$onViewCreated$1;->this$0:Lcom/xiaomi/passport/ui/internal/PswSignInFragment;

    sget v0, Lcom/xiaomi/passport/ui/R$id;->userId:I

    invoke-virtual {p1, v0}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$onViewCreated$1;->this$0:Lcom/xiaomi/passport/ui/internal/PswSignInFragment;

    sget v1, Lcom/xiaomi/passport/ui/R$id;->password:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputEditText;

    const-string v1, "password"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$onViewCreated$1;->this$0:Lcom/xiaomi/passport/ui/internal/PswSignInFragment;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$onViewCreated$1;->this$0:Lcom/xiaomi/passport/ui/internal/PswSignInFragment;

    sget v1, Lcom/xiaomi/passport/ui/R$string;->passport_empty_user_name:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.passport_empty_user_name)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->showUserNameError(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$onViewCreated$1;->this$0:Lcom/xiaomi/passport/ui/internal/PswSignInFragment;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$onViewCreated$1;->this$0:Lcom/xiaomi/passport/ui/internal/PswSignInFragment;

    sget v1, Lcom/xiaomi/passport/ui/R$string;->passport_empty_password:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.passport_empty_password)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->showPswError(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$onViewCreated$1;->this$0:Lcom/xiaomi/passport/ui/internal/PswSignInFragment;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->getPresenter()Lcom/xiaomi/passport/ui/internal/PswSignInContract$Presenter;

    move-result-object v1

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-interface {v1, p1, v0}, Lcom/xiaomi/passport/ui/internal/PswSignInContract$Presenter;->signInIdAndPsw(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
