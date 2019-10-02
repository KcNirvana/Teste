.class final Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$chooseToSignInOrSignUp$dialog$1;
.super Ljava/lang/Object;
.source "FragmentPhTicketAuth.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;->chooseToSignInOrSignUp(Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
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
.field final synthetic $authCredential:Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;

.field final synthetic $userInfo:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$chooseToSignInOrSignUp$dialog$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$chooseToSignInOrSignUp$dialog$1;->$authCredential:Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;

    iput-object p3, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$chooseToSignInOrSignUp$dialog$1;->$userInfo:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$chooseToSignInOrSignUp$dialog$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;->getPresenter()Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract$Presenter;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$chooseToSignInOrSignUp$dialog$1;->$authCredential:Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$chooseToSignInOrSignUp$dialog$1;->$userInfo:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    invoke-interface {p1, p2, v0}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract$Presenter;->chooseSignUp(Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V

    return-void
.end method
