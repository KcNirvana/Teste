.class public final Lcom/xiaomi/passport/ui/internal/PhAuthFragment;
.super Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;
.source "FragmentGetPhAuthMethod.kt"

# interfaces
.implements Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/ui/internal/PhAuthFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 =2\u00020\u00012\u00020\u0002:\u0001=B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0010\u0010!\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020#H\u0016J\"\u0010$\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020&2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0017J(\u0010*\u001a\u0004\u0018\u00010+2\u0008\u0008\u0001\u0010,\u001a\u00020-2\u0008\u0010.\u001a\u0004\u0018\u00010/2\u0008\u00100\u001a\u0004\u0018\u000101H\u0016J\u0008\u00102\u001a\u00020\u001dH\u0016J\u0010\u00103\u001a\u00020\u001d2\u0006\u00104\u001a\u000201H\u0016J\u001c\u00105\u001a\u00020\u001d2\u0008\u0008\u0001\u00106\u001a\u00020+2\u0008\u00100\u001a\u0004\u0018\u000101H\u0017J\u0012\u00107\u001a\u00020\u001d2\u0008\u00100\u001a\u0004\u0018\u000101H\u0016J\u0018\u00108\u001a\u00020\u001d2\u0006\u00109\u001a\u00020:2\u0006\u0010\"\u001a\u00020#H\u0016J\u0010\u0010;\u001a\u00020\u001d2\u0006\u0010<\u001a\u00020&H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006>"
    }
    d2 = {
        "Lcom/xiaomi/passport/ui/internal/PhAuthFragment;",
        "Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;",
        "Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;",
        "()V",
        "idPswAuthProvider",
        "Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;",
        "getIdPswAuthProvider",
        "()Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;",
        "setIdPswAuthProvider",
        "(Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;)V",
        "mPhoneViewWrapper",
        "Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;",
        "getMPhoneViewWrapper",
        "()Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;",
        "setMPhoneViewWrapper",
        "(Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;)V",
        "passportRepo",
        "Lcom/xiaomi/passport/ui/internal/PassportRepo;",
        "getPassportRepo",
        "()Lcom/xiaomi/passport/ui/internal/PassportRepo;",
        "setPassportRepo",
        "(Lcom/xiaomi/passport/ui/internal/PassportRepo;)V",
        "presenter",
        "Lcom/xiaomi/passport/ui/internal/PhAuthContract$Presenter;",
        "getPresenter",
        "()Lcom/xiaomi/passport/ui/internal/PhAuthContract$Presenter;",
        "setPresenter",
        "(Lcom/xiaomi/passport/ui/internal/PhAuthContract$Presenter;)V",
        "clearPhonePopList",
        "",
        "gotoPswSignIn",
        "userId",
        "",
        "gotoTicketSignIn",
        "phone",
        "Lcom/xiaomi/passport/ui/internal/PhoneWrapper;",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
        "onSaveInstanceState",
        "outState",
        "onViewCreated",
        "view",
        "onViewStateRestored",
        "showCaptcha",
        "captcha",
        "Lcom/xiaomi/passport/ui/internal/Captcha;",
        "showPhoneNumError",
        "msgRes",
        "Companion",
        "passportui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# static fields
.field public static final Companion:Lcom/xiaomi/passport/ui/internal/PhAuthFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private idPswAuthProvider:Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mPhoneViewWrapper:Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private passportRepo:Lcom/xiaomi/passport/ui/internal/PassportRepo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public presenter:Lcom/xiaomi/passport/ui/internal/PhAuthContract$Presenter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/ui/internal/PhAuthFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->Companion:Lcom/xiaomi/passport/ui/internal/PhAuthFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "PHONE_SMS_AUTH_PROVIDER"

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/passport/ui/internal/PassportUI;->INSTANCE:Lcom/xiaomi/passport/ui/internal/PassportUI;

    const-string v1, "ID_PSW_AUTH_PROVIDER"

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/internal/PassportUI;->getBaseAuthProvider(Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->idPswAuthProvider:Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;

    new-instance v0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;

    invoke-direct {v0}, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;-><init>()V

    check-cast v0, Lcom/xiaomi/passport/ui/internal/PassportRepo;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->passportRepo:Lcom/xiaomi/passport/ui/internal/PassportRepo;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public clearPhonePopList()V
    .locals 2

    sget v0, Lcom/xiaomi/passport/ui/R$id;->phone:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    const-string v1, ""

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    sget v0, Lcom/xiaomi/passport/ui/R$id;->phone:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public final getIdPswAuthProvider()Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->idPswAuthProvider:Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;

    return-object v0
.end method

.method public final getMPhoneViewWrapper()Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->mPhoneViewWrapper:Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;

    return-object v0
.end method

.method public final getPassportRepo()Lcom/xiaomi/passport/ui/internal/PassportRepo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->passportRepo:Lcom/xiaomi/passport/ui/internal/PassportRepo;

    return-object v0
.end method

.method public final getPresenter()Lcom/xiaomi/passport/ui/internal/PhAuthContract$Presenter;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->presenter:Lcom/xiaomi/passport/ui/internal/PhAuthContract$Presenter;

    if-nez v0, :cond_0

    const-string v1, "presenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public gotoPswSignIn(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->idPswAuthProvider:Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/xiaomi/passport/ui/internal/IdPswAuthProvider;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "sid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "arguments!!.getString(\"sid\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/passport/ui/internal/IdPswAuthProvider;->getFragment(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->gotoFragment(Landroid/support/v4/app/Fragment;Z)V

    return-void

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.xiaomi.passport.ui.internal.IdPswAuthProvider"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public gotoTicketSignIn(Lcom/xiaomi/passport/ui/internal/PhoneWrapper;)V
    .locals 2
    .param p1    # Lcom/xiaomi/passport/ui/internal/PhoneWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "phone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;->Companion:Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$Companion;

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/PhoneWrapper;->getSid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$Companion;->newInstance(Ljava/lang/String;Lcom/xiaomi/passport/ui/internal/PhoneWrapper;)Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->gotoFragment(Landroid/support/v4/app/Fragment;Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x7d1

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-nez p3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string p1, "code"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/xiaomi/passport/ui/R$id;->passport_country_code_text:I

    invoke-virtual {p0, p2}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string p3, "passport_country_code_text"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x2b

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Lcom/xiaomi/passport/ui/R$layout;->fg_ph_auth_method:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->mPhoneViewWrapper:Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;->destroy()V

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->mPhoneViewWrapper:Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;

    invoke-super {p0}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget p1, Lcom/xiaomi/passport/ui/R$id;->ph_sign_in_btn:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance p2, Lcom/xiaomi/passport/ui/internal/PhAuthFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment$onViewCreated$1;-><init>(Lcom/xiaomi/passport/ui/internal/PhAuthFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/xiaomi/passport/ui/R$id;->action_goto_psw_signin:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance p2, Lcom/xiaomi/passport/ui/internal/PhAuthFragment$onViewCreated$2;

    invoke-direct {p2, p0}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment$onViewCreated$2;-><init>(Lcom/xiaomi/passport/ui/internal/PhAuthFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/xiaomi/passport/ui/R$id;->cb_agree_something:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    new-instance p2, Lcom/xiaomi/passport/ui/internal/PhAuthFragment$onViewCreated$3;

    invoke-direct {p2, p0}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment$onViewCreated$3;-><init>(Lcom/xiaomi/passport/ui/internal/PhAuthFragment;)V

    check-cast p2, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget p1, Lcom/xiaomi/passport/ui/R$id;->passport_country_code_text:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance p2, Lcom/xiaomi/passport/ui/internal/PhAuthFragment$onViewCreated$4;

    invoke-direct {p2, p0}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment$onViewCreated$4;-><init>(Lcom/xiaomi/passport/ui/internal/PhAuthFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/xiaomi/passport/ui/R$id;->passport_country_code_text:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "passport_country_code_text"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/xiaomi/passport/ui/R$id;->passport_country_code_text:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "passport_country_code_text"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "+86"

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance p1, Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v0, "sid"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p2, "arguments!!.getString(\"sid\")"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-string p2, "context!!"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/xiaomi/passport/ui/R$id;->phone:I

    invoke-virtual {p0, p2}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/widget/AutoCompleteTextView;

    const-string p2, "phone"

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/xiaomi/passport/ui/R$id;->passport_country_code_text:I

    invoke-virtual {p0, p2}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Landroid/widget/TextView;

    const-string p2, "passport_country_code_text"

    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/xiaomi/passport/ui/R$id;->delete_phone:I

    invoke-virtual {p0, p2}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const-string v0, "delete_phone"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p2

    check-cast v5, Landroid/view/View;

    sget p2, Lcom/xiaomi/passport/ui/R$id;->passport_operator_license:I

    invoke-virtual {p0, p2}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Landroid/widget/TextView;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/widget/AutoCompleteTextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;)V

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->mPhoneViewWrapper:Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    return-void
.end method

.method public final setIdPswAuthProvider(Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;)V
    .locals 1
    .param p1    # Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->idPswAuthProvider:Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;

    return-void
.end method

.method public final setMPhoneViewWrapper(Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;)V
    .locals 0
    .param p1    # Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->mPhoneViewWrapper:Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;

    return-void
.end method

.method public final setPassportRepo(Lcom/xiaomi/passport/ui/internal/PassportRepo;)V
    .locals 1
    .param p1    # Lcom/xiaomi/passport/ui/internal/PassportRepo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->passportRepo:Lcom/xiaomi/passport/ui/internal/PassportRepo;

    return-void
.end method

.method public final setPresenter(Lcom/xiaomi/passport/ui/internal/PhAuthContract$Presenter;)V
    .locals 1
    .param p1    # Lcom/xiaomi/passport/ui/internal/PhAuthContract$Presenter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->presenter:Lcom/xiaomi/passport/ui/internal/PhAuthContract$Presenter;

    return-void
.end method

.method public showCaptcha(Lcom/xiaomi/passport/ui/internal/Captcha;Lcom/xiaomi/passport/ui/internal/PhoneWrapper;)V
    .locals 4
    .param p1    # Lcom/xiaomi/passport/ui/internal/Captcha;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/passport/ui/internal/PhoneWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "captcha"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phone"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->getMCommonErrorHandler()Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const-string v3, "layoutInflater"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/xiaomi/passport/ui/internal/PhAuthFragment$showCaptcha$1;

    invoke-direct {v3, p0, p2}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment$showCaptcha$1;-><init>(Lcom/xiaomi/passport/ui/internal/PhAuthFragment;Lcom/xiaomi/passport/ui/internal/PhoneWrapper;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;->showCaptcha(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/xiaomi/passport/ui/internal/Captcha;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public showPhoneNumError(I)V
    .locals 1

    sget v0, Lcom/xiaomi/passport/ui/R$id;->phone_wrapper:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
