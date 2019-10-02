.class public final Lcom/xiaomi/passport/ui/internal/PswSignInFragment;
.super Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;
.source "FragmentIdPswAuth.kt"

# interfaces
.implements Lcom/xiaomi/passport/ui/internal/PswSignInContract$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/ui/internal/PswSignInFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 .2\u00020\u00012\u00020\u0002:\u0001.B\u0005\u00a2\u0006\u0002\u0010\u0003J(\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0008\u0001\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u001c\u0010\u001e\u001a\u00020\u001f2\u0008\u0008\u0001\u0010 \u001a\u00020\u00172\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0018\u0010!\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0016J\u0010\u0010&\u001a\u00020\u001f2\u0006\u0010\'\u001a\u00020\u0005H\u0016J\u0010\u0010(\u001a\u00020\u001f2\u0006\u0010\'\u001a\u00020\u0005H\u0016J \u0010)\u001a\u00020\u001f2\u0006\u0010$\u001a\u00020%2\u0006\u0010*\u001a\u00020\u00052\u0006\u0010+\u001a\u00020,H\u0016J\u0008\u0010-\u001a\u00020\u001fH\u0002R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006/"
    }
    d2 = {
        "Lcom/xiaomi/passport/ui/internal/PswSignInFragment;",
        "Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;",
        "Lcom/xiaomi/passport/ui/internal/PswSignInContract$View;",
        "()V",
        "mSignInUserId",
        "",
        "getMSignInUserId",
        "()Ljava/lang/String;",
        "setMSignInUserId",
        "(Ljava/lang/String;)V",
        "phoneAuthProvider",
        "Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;",
        "getPhoneAuthProvider",
        "()Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;",
        "setPhoneAuthProvider",
        "(Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;)V",
        "presenter",
        "Lcom/xiaomi/passport/ui/internal/PswSignInContract$Presenter;",
        "getPresenter",
        "()Lcom/xiaomi/passport/ui/internal/PswSignInContract$Presenter;",
        "setPresenter",
        "(Lcom/xiaomi/passport/ui/internal/PswSignInContract$Presenter;)V",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "",
        "view",
        "showCaptcha",
        "captcha",
        "Lcom/xiaomi/passport/ui/internal/Captcha;",
        "authCredential",
        "Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;",
        "showPswError",
        "msg",
        "showUserNameError",
        "showVStep2Code",
        "step1Token",
        "metaLoginData",
        "Lcom/xiaomi/accountsdk/account/data/MetaLoginData;",
        "specifyUserId",
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
.field public static final Companion:Lcom/xiaomi/passport/ui/internal/PswSignInFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private mSignInUserId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private phoneAuthProvider:Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public presenter:Lcom/xiaomi/passport/ui/internal/PswSignInContract$Presenter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->Companion:Lcom/xiaomi/passport/ui/internal/PswSignInFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "ID_PSW_AUTH_PROVIDER"

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/passport/ui/internal/PassportUI;->INSTANCE:Lcom/xiaomi/passport/ui/internal/PassportUI;

    const-string v1, "PHONE_SMS_AUTH_PROVIDER"

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/internal/PassportUI;->getBaseAuthProvider(Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->phoneAuthProvider:Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;

    return-void
.end method

.method private final specifyUserId()V
    .locals 5

    sget v0, Lcom/xiaomi/passport/ui/R$id;->sign_in_user_id_text:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "sign_in_user_id_text"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lcom/xiaomi/passport/ui/R$id;->sign_in_user_id_text:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "sign_in_user_id_text"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/xiaomi/passport/ui/R$string;->passport_user_id_intro:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->mSignInUserId:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/xiaomi/passport/ui/R$id;->userId_wapper:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    const-string v1, "userId_wapper"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setVisibility(I)V

    sget v0, Lcom/xiaomi/passport/ui/R$id;->action_ph_ticket_signin:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "action_ph_ticket_signin"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lcom/xiaomi/passport/ui/R$id;->action_goto_siginup_from_psw:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "action_goto_siginup_from_psw"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->hideSns()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getMSignInUserId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->mSignInUserId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoneAuthProvider()Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->phoneAuthProvider:Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;

    return-object v0
.end method

.method public final getPresenter()Lcom/xiaomi/passport/ui/internal/PswSignInContract$Presenter;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->presenter:Lcom/xiaomi/passport/ui/internal/PswSignInContract$Presenter;

    if-nez v0, :cond_0

    const-string v1, "presenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
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

    sget p3, Lcom/xiaomi/passport/ui/R$layout;->fg_psw_signin:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->presenter:Lcom/xiaomi/passport/ui/internal/PswSignInContract$Presenter;

    if-nez v0, :cond_0

    const-string v1, "presenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lcom/xiaomi/passport/ui/internal/PswSignInContract$Presenter;->getSignedInUserIds()[Ljava/lang/String;

    move-result-object v0

    const v1, 0x1090003

    invoke-direct {p1, p2, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    sget p2, Lcom/xiaomi/passport/ui/R$id;->userId:I

    invoke-virtual {p0, p2}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/AutoCompleteTextView;

    const-string v0, "userId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    sget p2, Lcom/xiaomi/passport/ui/R$id;->userId:I

    invoke-virtual {p0, p2}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/AutoCompleteTextView;

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p2, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget p1, Lcom/xiaomi/passport/ui/R$id;->sign_in_btn:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance p2, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$onViewCreated$1;-><init>(Lcom/xiaomi/passport/ui/internal/PswSignInFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/xiaomi/passport/ui/R$id;->action_find_psw:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance p2, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$onViewCreated$2;

    invoke-direct {p2, p0}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$onViewCreated$2;-><init>(Lcom/xiaomi/passport/ui/internal/PswSignInFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/xiaomi/passport/ui/R$id;->action_goto_siginup_from_psw:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance p2, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$onViewCreated$3;

    invoke-direct {p2, p0}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$onViewCreated$3;-><init>(Lcom/xiaomi/passport/ui/internal/PswSignInFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/xiaomi/passport/ui/R$id;->action_ph_ticket_signin:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance p2, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$onViewCreated$4;

    invoke-direct {p2, p0}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$onViewCreated$4;-><init>(Lcom/xiaomi/passport/ui/internal/PswSignInFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/xiaomi/passport/ui/R$id;->cb_agree_something:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    new-instance p2, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$onViewCreated$5;

    invoke-direct {p2, p0}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$onViewCreated$5;-><init>(Lcom/xiaomi/passport/ui/internal/PswSignInFragment;)V

    check-cast p2, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string p2, "userId"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->mSignInUserId:Ljava/lang/String;

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->mSignInUserId:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->specifyUserId()V

    :cond_2
    return-void
.end method

.method public final setMSignInUserId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->mSignInUserId:Ljava/lang/String;

    return-void
.end method

.method public final setPhoneAuthProvider(Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;)V
    .locals 1
    .param p1    # Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->phoneAuthProvider:Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;

    return-void
.end method

.method public final setPresenter(Lcom/xiaomi/passport/ui/internal/PswSignInContract$Presenter;)V
    .locals 1
    .param p1    # Lcom/xiaomi/passport/ui/internal/PswSignInContract$Presenter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->presenter:Lcom/xiaomi/passport/ui/internal/PswSignInContract$Presenter;

    return-void
.end method

.method public showCaptcha(Lcom/xiaomi/passport/ui/internal/Captcha;Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;)V
    .locals 4
    .param p1    # Lcom/xiaomi/passport/ui/internal/Captcha;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "captcha"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authCredential"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->getMCommonErrorHandler()Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const-string v3, "layoutInflater"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$showCaptcha$1;

    invoke-direct {v3, p0, p2}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$showCaptcha$1;-><init>(Lcom/xiaomi/passport/ui/internal/PswSignInFragment;Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;->showCaptcha(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/xiaomi/passport/ui/internal/Captcha;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public showPswError(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/xiaomi/passport/ui/R$id;->userId_wapper:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    :cond_0
    sget v0, Lcom/xiaomi/passport/ui/R$id;->password_wapper:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public showUserNameError(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/xiaomi/passport/ui/R$id;->password_wapper:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    :cond_0
    sget v0, Lcom/xiaomi/passport/ui/R$id;->userId_wapper:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public showVStep2Code(Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;)V
    .locals 10
    .param p1    # Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/xiaomi/accountsdk/account/data/MetaLoginData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "authCredential"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "step1Token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metaLoginData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaomi/passport/ui/R$layout;->dg_vcode_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/xiaomi/passport/ui/R$id;->cb_add_to_trust_device:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/CheckBox;

    sget v1, Lcom/xiaomi/passport/ui/R$id;->v_code_input:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/EditText;

    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/xiaomi/passport/ui/R$string;->v_code_title:I

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v9, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$showVStep2Code$dialog$1;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$showVStep2Code$dialog$1;-><init>(Lcom/xiaomi/passport/ui/internal/PswSignInFragment;Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Landroid/widget/EditText;Landroid/widget/CheckBox;)V

    check-cast v9, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method
