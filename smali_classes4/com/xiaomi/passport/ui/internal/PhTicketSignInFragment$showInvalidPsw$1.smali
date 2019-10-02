.class final Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$showInvalidPsw$1;
.super Ljava/lang/Object;
.source "FragmentPhTicketAuth.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;->showInvalidPsw(Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;I)V
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
.field final synthetic $authCredential:Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;

.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$showInvalidPsw$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$showInvalidPsw$1;->$authCredential:Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$showInvalidPsw$1;->$authCredential:Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$showInvalidPsw$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;

    sget v1, Lcom/xiaomi/passport/ui/R$id;->password:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputEditText;

    const-string v1, "password"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;->setNewPsw(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$showInvalidPsw$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;->getPresenter()Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract$Presenter;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$showInvalidPsw$1;->$authCredential:Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;

    invoke-interface {p1, v0}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract$Presenter;->chooseSignUp(Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;)V

    return-void
.end method
