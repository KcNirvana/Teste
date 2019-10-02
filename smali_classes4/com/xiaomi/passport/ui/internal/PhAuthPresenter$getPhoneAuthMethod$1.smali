.class final Lcom/xiaomi/passport/ui/internal/PhAuthPresenter$getPhoneAuthMethod$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FragmentGetPhAuthMethod.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->getPhoneAuthMethod(Lcom/xiaomi/passport/ui/internal/PhoneWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field final synthetic $phone:Lcom/xiaomi/passport/ui/internal/PhoneWrapper;

.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;Lcom/xiaomi/passport/ui/internal/PhoneWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter$getPhoneAuthMethod$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter$getPhoneAuthMethod$1;->$phone:Lcom/xiaomi/passport/ui/internal/PhoneWrapper;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter$getPhoneAuthMethod$1;->invoke(Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;)V
    .locals 3
    .param p1    # Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter$getPhoneAuthMethod$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->getView()Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;->dismissProgress()V

    sget-object v0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter$getPhoneAuthMethod$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->getView()Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter$getPhoneAuthMethod$1;->$phone:Lcom/xiaomi/passport/ui/internal/PhoneWrapper;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/PhoneWrapper;->getPhone()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {p1, v0}, Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;->gotoPswSignIn(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter$getPhoneAuthMethod$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter$getPhoneAuthMethod$1;->$phone:Lcom/xiaomi/passport/ui/internal/PhoneWrapper;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lcom/xiaomi/passport/ui/internal/PhAuthContract$Presenter$DefaultImpls;->sendTicket$default(Lcom/xiaomi/passport/ui/internal/PhAuthContract$Presenter;Lcom/xiaomi/passport/ui/internal/PhoneWrapper;Lcom/xiaomi/passport/ui/internal/CaptchaCode;ILjava/lang/Object;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
