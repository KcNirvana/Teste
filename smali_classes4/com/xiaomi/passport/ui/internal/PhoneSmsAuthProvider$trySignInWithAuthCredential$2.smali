.class final Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider$trySignInWithAuthCredential$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AuthBaseProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider;->trySignInWithAuthCredential(Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;)Lcom/xiaomi/passport/ui/internal/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
        "it",
        "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
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
.field final synthetic $authCredential:Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;

.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider;Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider$trySignInWithAuthCredential$2;->this$0:Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider$trySignInWithAuthCredential$2;->$authCredential:Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 4
    .param p1    # Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->status:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider$trySignInWithAuthCredential$2;->this$0:Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider;->getPassportRepo()Lcom/xiaomi/passport/ui/internal/PassportRepo;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;

    iget-object v2, p0, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider$trySignInWithAuthCredential$2;->$authCredential:Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;

    const/4 v3, 0x1

    invoke-direct {v1, v2, p1, v3}, Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;-><init>(Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Z)V

    invoke-interface {v0, v1}, Lcom/xiaomi/passport/ui/internal/PassportRepo;->signInWithPhone(Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider$trySignInWithAuthCredential$2;->this$0:Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider;->getPassportRepo()Lcom/xiaomi/passport/ui/internal/PassportRepo;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;

    iget-object v2, p0, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider$trySignInWithAuthCredential$2;->$authCredential:Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;-><init>(Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Z)V

    invoke-interface {v0, v1}, Lcom/xiaomi/passport/ui/internal/PassportRepo;->signUpWithPhone(Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p1

    return-object p1

    :cond_0
    :goto_0
    new-instance v0, Lcom/xiaomi/passport/ui/internal/PhoneRecycleException;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider$trySignInWithAuthCredential$2;->$authCredential:Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;

    invoke-direct {v0, v1, p1}, Lcom/xiaomi/passport/ui/internal/PhoneRecycleException;-><init>(Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider$trySignInWithAuthCredential$2;->invoke(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p1

    return-object p1
.end method
