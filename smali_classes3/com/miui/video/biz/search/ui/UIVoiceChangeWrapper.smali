.class public final Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UIVoiceChangeWrapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0011\u001a\u00020\u0012H\u0002J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0002J\u0008\u0010\u0017\u001a\u00020\u0016H\u0002J\u0008\u0010\u0018\u001a\u00020\u0016H\u0016J\u0008\u0010\u0019\u001a\u00020\u0016H\u0016J\u0008\u0010\u001a\u001a\u00020\u0016H\u0016J\u000f\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002\u00a2\u0006\u0002\u0010\u001dJ\u001c\u0010\u001e\u001a\u00020\u00162\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0002J\u0016\u0010#\u001a\u00020\u00162\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;",
        "Lcom/miui/video/framework/base/ui/UIBase;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "(Landroid/content/Context;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "mVoiceLanguageListEntity",
        "Lcom/miui/video/biz/search/entities/VoiceLanguageListEntity;",
        "vUIChooseLanguage",
        "Landroid/widget/TextView;",
        "vUIVoiceLayout",
        "Landroid/view/ViewGroup;",
        "createVoiceLanguageEntity",
        "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
        "getCurrentVoiceLanguage",
        "Lcom/miui/video/biz/search/entities/VoiceLanguageEntity;",
        "initChooseLanguageValue",
        "",
        "initData",
        "initFindViews",
        "initViewsEvent",
        "initViewsValue",
        "shouldShowVoiceLanguage",
        "",
        "()Ljava/lang/Boolean;",
        "showChangeVoiceLanguageDialog",
        "okClickListener",
        "Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange$IOnOKClickListener;",
        "cancelListener",
        "Landroid/content/DialogInterface$OnCancelListener;",
        "startGoogleVoiceSearch",
        "activity",
        "Landroid/app/Activity;",
        "source",
        "",
        "biz_group_search_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private mVoiceLanguageListEntity:Lcom/miui/video/biz/search/entities/VoiceLanguageListEntity;

.field private vUIChooseLanguage:Landroid/widget/TextView;

.field private vUIVoiceLayout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getVUIChooseLanguage$p(Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->vUIChooseLanguage:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$setVUIChooseLanguage$p(Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->vUIChooseLanguage:Landroid/widget/TextView;

    return-void
.end method

.method public static final synthetic access$showChangeVoiceLanguageDialog(Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange$IOnOKClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->showChangeVoiceLanguageDialog(Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange$IOnOKClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method private final createVoiceLanguageEntity()Lcom/miui/video/common/feed/entity/FeedRowEntity;
    .locals 8

    invoke-virtual {p0}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "selected_voice_search_language"

    const-class v2, Lcom/miui/video/biz/search/entities/VoiceLanguageEntity;

    invoke-static {v0, v1, v2}, Lcom/miui/video/biz/search/utils/SearchSPManager;->readJsonObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/search/entities/VoiceLanguageEntity;

    new-instance v1, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-direct {v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;-><init>()V

    iget-object v2, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->mVoiceLanguageListEntity:Lcom/miui/video/biz/search/entities/VoiceLanguageListEntity;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->mVoiceLanguageListEntity:Lcom/miui/video/biz/search/entities/VoiceLanguageListEntity;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v2}, Lcom/miui/video/biz/search/entities/VoiceLanguageListEntity;->getLanguage_list()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/biz/search/entities/VoiceLanguageEntity;

    new-instance v4, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-direct {v4}, Lcom/miui/video/common/feed/entity/TinyCardEntity;-><init>()V

    invoke-virtual {v3}, Lcom/miui/video/biz/search/entities/VoiceLanguageEntity;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setId(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/miui/video/biz/search/entities/VoiceLanguageEntity;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/miui/video/biz/search/entities/VoiceLanguageEntity;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setSubTitle(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/miui/video/biz/search/entities/VoiceLanguageEntity;->getTranslate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setExtraData(Ljava/lang/String;)V

    const/16 v5, 0x62

    invoke-virtual {v4, v5}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setLayoutType(I)V

    const/4 v5, 0x1

    if-nez v0, :cond_1

    invoke-virtual {v4, v5}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "selected_voice_search_language"

    invoke-static {v0, v5, v3}, Lcom/miui/video/biz/search/utils/SearchSPManager;->saveJsonObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/miui/video/biz/search/entities/VoiceLanguageEntity;->getId()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v3}, Lcom/miui/video/biz/search/entities/VoiceLanguageEntity;->getId()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4, v5}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setChecked(Z)V

    :goto_1
    move-object v0, v3

    :cond_2
    invoke-virtual {v1, v4}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->add(Lcom/miui/video/common/feed/entity/TinyCardEntity;)V

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private final getCurrentVoiceLanguage()Lcom/miui/video/biz/search/entities/VoiceLanguageEntity;
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "selected_voice_search_language"

    const-class v2, Lcom/miui/video/biz/search/entities/VoiceLanguageEntity;

    invoke-static {v0, v1, v2}, Lcom/miui/video/biz/search/utils/SearchSPManager;->readJsonObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/search/entities/VoiceLanguageEntity;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->mVoiceLanguageListEntity:Lcom/miui/video/biz/search/entities/VoiceLanguageListEntity;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/search/entities/VoiceLanguageListEntity;->getLanguage_list()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/search/entities/VoiceLanguageEntity;

    :cond_1
    return-object v0
.end method

.method private final initChooseLanguageValue()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->shouldShowVoiceLanguage()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->shouldShowVoiceLanguage()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->vUIChooseLanguage:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->getCurrentVoiceLanguage()Lcom/miui/video/biz/search/entities/VoiceLanguageEntity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/miui/video/biz/search/entities/VoiceLanguageEntity;->getTranslate()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->vUIVoiceLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->vUIVoiceLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private final initData()V
    .locals 3

    const-string v0, "IN"

    invoke-static {v0}, Lcom/miui/video/base/utils/RegionUtils;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "voice_language_in.json"

    const-class v2, Lcom/miui/video/biz/search/entities/VoiceLanguageListEntity;

    check-cast v2, Ljava/lang/reflect/Type;

    invoke-static {v0, v1, v2}, Lcom/miui/video/base/common/internal/GlobalGson;->loadJsonObjectAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/search/entities/VoiceLanguageListEntity;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "voice_language_id.json"

    const-class v2, Lcom/miui/video/biz/search/entities/VoiceLanguageListEntity;

    check-cast v2, Ljava/lang/reflect/Type;

    invoke-static {v0, v1, v2}, Lcom/miui/video/base/common/internal/GlobalGson;->loadJsonObjectAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/search/entities/VoiceLanguageListEntity;

    :goto_0
    iput-object v0, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->mVoiceLanguageListEntity:Lcom/miui/video/biz/search/entities/VoiceLanguageListEntity;

    return-void
.end method

.method private final shouldShowVoiceLanguage()Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->mVoiceLanguageListEntity:Lcom/miui/video/biz/search/entities/VoiceLanguageListEntity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/biz/search/entities/VoiceLanguageListEntity;->getLanguage_list()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->mVoiceLanguageListEntity:Lcom/miui/video/biz/search/entities/VoiceLanguageListEntity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/video/biz/search/entities/VoiceLanguageListEntity;->getLanguage_list()Ljava/util/ArrayList;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private final showChangeVoiceLanguageDialog(Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange$IOnOKClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 4

    invoke-direct {p0}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->getCurrentVoiceLanguage()Lcom/miui/video/biz/search/entities/VoiceLanguageEntity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->createVoiceLanguageEntity()Lcom/miui/video/common/feed/entity/FeedRowEntity;

    move-result-object v2

    new-instance v3, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper$showChangeVoiceLanguageDialog$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper$showChangeVoiceLanguageDialog$1;-><init>(Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange$IOnOKClickListener;Lcom/miui/video/biz/search/entities/VoiceLanguageEntity;)V

    check-cast v3, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange$IOnOKClickListener;

    invoke-static {v1, v2, v3, p2}, Lcom/miui/video/biz/search/utils/SettingDialogUtils;->showChooseVoiceLanguageDialog(Landroid/content/Context;Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange$IOnOKClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    const-string p2, "module"

    const-string v0, "search_page"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "event"

    const-string v0, "language_click"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/miui/video/biz/search/track/SearchTrackerConst;->Companion:Lcom/miui/video/biz/search/track/SearchTrackerConst$Companion;

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/search/track/SearchTrackerConst$Companion;->track(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/biz/search/R$layout;->ui_voice_change_wrapper:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->inflateView(I)V

    sget v0, Lcom/miui/video/biz/search/R$id;->ui_rl_voice:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->vUIVoiceLayout:Landroid/view/ViewGroup;

    sget v0, Lcom/miui/video/biz/search/R$id;->ui_tv_choose_language:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->vUIChooseLanguage:Landroid/widget/TextView;

    return-void
.end method

.method public initViewsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->vUIVoiceLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper$initViewsEvent$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper$initViewsEvent$1;-><init>(Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public initViewsValue()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->initData()V

    invoke-direct {p0}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->initChooseLanguageValue()V

    return-void
.end method

.method public final startGoogleVoiceSearch(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "selected_voice_search_language"

    const-class v2, Lcom/miui/video/biz/search/entities/VoiceLanguageEntity;

    invoke-static {v0, v1, v2}, Lcom/miui/video/biz/search/utils/SearchSPManager;->readJsonObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/search/entities/VoiceLanguageEntity;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->shouldShowVoiceLanguage()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->shouldShowVoiceLanguage()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper$startGoogleVoiceSearch$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper$startGoogleVoiceSearch$1;-><init>(Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;Landroid/app/Activity;Ljava/lang/String;)V

    check-cast v0, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange$IOnOKClickListener;

    new-instance v1, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper$startGoogleVoiceSearch$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper$startGoogleVoiceSearch$2;-><init>(Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;Landroid/app/Activity;Ljava/lang/String;)V

    check-cast v1, Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct {p0, v0, v1}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->showChangeVoiceLanguageDialog(Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange$IOnOKClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->getCurrentVoiceLanguage()Lcom/miui/video/biz/search/entities/VoiceLanguageEntity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.speech.extra.LANGUAGE_MODEL"

    const-string v3, "free_form"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.speech.extra.LANGUAGE"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/video/biz/search/entities/VoiceLanguageEntity;->getCode()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v3

    :goto_0
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x3e9

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    const-string v2, "module"

    const-string v4, "search_page"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    const-string v2, "event"

    const-string v4, "search_voice_up"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    const-string v2, "source"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    move-object v1, p2

    check-cast v1, Ljava/util/Map;

    const-string v2, "item_id"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/video/biz/search/entities/VoiceLanguageEntity;->getCode()Ljava/lang/String;

    move-result-object v3

    :cond_3
    if-nez v3, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/video/biz/search/track/SearchTrackerConst;->Companion:Lcom/miui/video/biz/search/track/SearchTrackerConst$Companion;

    check-cast p1, Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/biz/search/track/SearchTrackerConst$Companion;->track(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
