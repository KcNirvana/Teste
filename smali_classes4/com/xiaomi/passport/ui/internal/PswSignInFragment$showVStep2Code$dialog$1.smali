.class final Lcom/xiaomi/passport/ui/internal/PswSignInFragment$showVStep2Code$dialog$1;
.super Ljava/lang/Object;
.source "FragmentIdPswAuth.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->showVStep2Code(Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;)V
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "",
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
.field final synthetic $authCredential:Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;

.field final synthetic $cb_trust:Landroid/widget/CheckBox;

.field final synthetic $metaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

.field final synthetic $step1Token:Ljava/lang/String;

.field final synthetic $vcode_inpout:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/PswSignInFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/PswSignInFragment;Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Landroid/widget/EditText;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$showVStep2Code$dialog$1;->this$0:Lcom/xiaomi/passport/ui/internal/PswSignInFragment;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$showVStep2Code$dialog$1;->$authCredential:Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;

    iput-object p3, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$showVStep2Code$dialog$1;->$step1Token:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$showVStep2Code$dialog$1;->$metaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iput-object p5, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$showVStep2Code$dialog$1;->$vcode_inpout:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$showVStep2Code$dialog$1;->$cb_trust:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$showVStep2Code$dialog$1;->this$0:Lcom/xiaomi/passport/ui/internal/PswSignInFragment;

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->getPresenter()Lcom/xiaomi/passport/ui/internal/PswSignInContract$Presenter;

    move-result-object v0

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$showVStep2Code$dialog$1;->$authCredential:Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$showVStep2Code$dialog$1;->$step1Token:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$showVStep2Code$dialog$1;->$metaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$showVStep2Code$dialog$1;->$vcode_inpout:Landroid/widget/EditText;

    const-string p2, "vcode_inpout"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$showVStep2Code$dialog$1;->$cb_trust:Landroid/widget/CheckBox;

    const-string p2, "cb_trust"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/passport/ui/internal/PswSignInContract$Presenter;->signInVStep2(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Ljava/lang/String;Z)V

    return-void
.end method
