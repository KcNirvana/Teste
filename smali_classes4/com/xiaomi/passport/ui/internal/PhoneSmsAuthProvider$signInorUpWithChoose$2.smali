.class final Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider$signInorUpWithChoose$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AuthBaseProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider;->signInorUpWithChoose(Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;)Lcom/xiaomi/passport/ui/internal/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
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
.field final synthetic $credential:Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;

.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider;Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider$signInorUpWithChoose$2;->this$0:Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider$signInorUpWithChoose$2;->$credential:Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider$signInorUpWithChoose$2;->this$0:Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider;->getPassportRepo()Lcom/xiaomi/passport/ui/internal/PassportRepo;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider$signInorUpWithChoose$2;->$credential:Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;

    invoke-interface {v0, v1}, Lcom/xiaomi/passport/ui/internal/PassportRepo;->signUpWithPhone(Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider$signInorUpWithChoose$2;->invoke()Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0

    return-object v0
.end method
