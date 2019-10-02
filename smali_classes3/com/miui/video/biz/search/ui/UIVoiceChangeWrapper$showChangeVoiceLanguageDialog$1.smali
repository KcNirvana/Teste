.class final Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper$showChangeVoiceLanguageDialog$1;
.super Ljava/lang/Object;
.source "UIVoiceChangeWrapper.kt"

# interfaces
.implements Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange$IOnOKClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->showChangeVoiceLanguageDialog(Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange$IOnOKClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $currentLanguage:Lcom/miui/video/biz/search/entities/VoiceLanguageEntity;

.field final synthetic $okClickListener:Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange$IOnOKClickListener;

.field final synthetic this$0:Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange$IOnOKClickListener;Lcom/miui/video/biz/search/entities/VoiceLanguageEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper$showChangeVoiceLanguageDialog$1;->this$0:Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;

    iput-object p2, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper$showChangeVoiceLanguageDialog$1;->$okClickListener:Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange$IOnOKClickListener;

    iput-object p3, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper$showChangeVoiceLanguageDialog$1;->$currentLanguage:Lcom/miui/video/biz/search/entities/VoiceLanguageEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/miui/video/common/feed/entity/TinyCardEntity;)V
    .locals 6

    new-instance v0, Lcom/miui/video/biz/search/entities/VoiceLanguageEntity;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSubTitle()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v1

    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getExtraData()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object v5, v1

    :goto_3
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/miui/video/biz/search/entities/VoiceLanguageEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper$showChangeVoiceLanguageDialog$1;->this$0:Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;

    invoke-virtual {v2}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "selected_voice_search_language"

    invoke-static {v2, v3, v0}, Lcom/miui/video/biz/search/utils/SearchSPManager;->saveJsonObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper$showChangeVoiceLanguageDialog$1;->this$0:Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;

    invoke-static {v0}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->access$getVUIChooseLanguage$p(Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getExtraData()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v1

    :goto_4
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v0, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper$showChangeVoiceLanguageDialog$1;->$okClickListener:Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange$IOnOKClickListener;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1}, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange$IOnOKClickListener;->onClick(Lcom/miui/video/common/feed/entity/TinyCardEntity;)V

    :cond_6
    iget-object v0, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper$showChangeVoiceLanguageDialog$1;->this$0:Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;

    invoke-virtual {v0}, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/biz/search/utils/SettingDialogUtils;->dismiss(Landroid/content/Context;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const-string v2, "module"

    const-string v3, "search_page"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "event"

    const-string v3, "language_change"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "source"

    iget-object v3, p0, Lcom/miui/video/biz/search/ui/UIVoiceChangeWrapper$showChangeVoiceLanguageDialog$1;->$currentLanguage:Lcom/miui/video/biz/search/entities/VoiceLanguageEntity;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/miui/video/biz/search/entities/VoiceLanguageEntity;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_7
    move-object v3, v1

    :goto_5
    if-nez v3, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    const-string v3, "item_id"

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getId()Ljava/lang/String;

    move-result-object v1

    :cond_9
    if-nez v1, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/miui/video/biz/search/track/SearchTrackerConst;->Companion:Lcom/miui/video/biz/search/track/SearchTrackerConst$Companion;

    invoke-virtual {p1, v0, v2}, Lcom/miui/video/biz/search/track/SearchTrackerConst$Companion;->track(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method
