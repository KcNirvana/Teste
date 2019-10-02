.class public abstract Lcom/miui/video/service/widget/ui/UIVideoGroup;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "UIVideoGroup.java"

# interfaces
.implements Lcom/miui/video/framework/impl/IEditModeCheckedListener;
.implements Lcom/miui/video/service/utils/VideoDurationHelper$LoadDurationListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "UIVideoGroup"

.field private static final TYPE_GROUP:I = 0x1

.field private static final TYPE_VIDEO:I = 0x2


# instance fields
.field private backgroundNormal:Landroid/graphics/drawable/Drawable;

.field private backgroundPlaylist:Landroid/graphics/drawable/Drawable;

.field private eClick:Landroid/view/View$OnClickListener;

.field private eItemClick:Landroid/view/View$OnClickListener;

.field private mEntity:Lcom/miui/video/base/database/VideoEntity;

.field private mRow:Lcom/miui/video/common/feed/entity/RowEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/video/common/feed/entity/RowEntity<",
            "Lcom/miui/video/base/database/VideoEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I

.field private vBottomMask:Landroid/widget/ImageView;

.field private vBottomRightText:Landroid/widget/TextView;

.field private vCheck:Landroid/widget/CheckBox;

.field private vChildLayout:Landroid/widget/LinearLayout;

.field private vCpIcon:Landroid/widget/ImageView;

.field private vDate:Landroid/widget/TextView;

.field private vIcon:Lcom/miui/video/common/feed/ui/card/UIImageView;

.field private vIconNew:Landroid/widget/ImageView;

.field private vInfo:Landroid/widget/TextView;

.field private vLayout:Landroid/widget/RelativeLayout;

.field private vPlayListMask:Landroid/view/View;

.field private vProgress:Landroid/widget/ProgressBar;

.field private vTimeLine:Landroid/widget/TextView;

.field private vTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1

    sget v0, Lcom/miui/video/service/R$layout;->ui_video_group:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    new-instance p1, Lcom/miui/video/service/widget/ui/UIVideoGroup$5;

    invoke-direct {p1, p0}, Lcom/miui/video/service/widget/ui/UIVideoGroup$5;-><init>(Lcom/miui/video/service/widget/ui/UIVideoGroup;)V

    iput-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->eClick:Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/miui/video/service/widget/ui/UIVideoGroup$6;

    invoke-direct {p1, p0}, Lcom/miui/video/service/widget/ui/UIVideoGroup$6;-><init>(Lcom/miui/video/service/widget/ui/UIVideoGroup;)V

    iput-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->eItemClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/service/widget/ui/UIVideoGroup;)Lcom/miui/video/base/database/VideoEntity;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/service/widget/ui/UIVideoGroup;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vBottomRightText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/service/widget/ui/UIVideoGroup;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/base/database/VideoEntity;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->setPlayProgress(Lcom/miui/video/base/database/VideoEntity;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/video/service/widget/ui/UIVideoGroup;)Landroid/view/View$OnLongClickListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mUILongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/service/widget/ui/UIVideoGroup;)Landroid/view/View$OnLongClickListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mUILongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/service/widget/ui/UIVideoGroup;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->onLayoutClick()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/video/service/widget/ui/UIVideoGroup;)Lcom/miui/video/common/feed/entity/RowEntity;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mRow:Lcom/miui/video/common/feed/entity/RowEntity;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/video/service/widget/ui/UIVideoGroup;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private clearChildLayout()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vChildLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method

.method private onLayoutClick()V
    .locals 9

    iget v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mType:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_8

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "KEY_EDIT_MODE_OPEN"

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->isEditModeEquals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    iget-object v1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/database/VideoEntity;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vCheck:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/database/VideoEntity;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vCheck:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->onCheckedChange()V

    goto/16 :goto_3

    :cond_0
    const/4 v6, 0x0

    const-string v0, "play_history"

    const-string v1, "favorite_video"

    iget-object v2, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/database/VideoEntity;->getItem_type()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "favorite_playlist"

    iget-object v2, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/database/VideoEntity;->getItem_type()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "history_online_video"

    iget-object v2, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/database/VideoEntity;->getItem_type()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "favorite_video"

    iget-object v3, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v3}, Lcom/miui/video/base/database/VideoEntity;->getItem_type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "favorite_playlist"

    iget-object v3, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v3}, Lcom/miui/video/base/database/VideoEntity;->getItem_type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "history_local_video"

    iget-object v3, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v3}, Lcom/miui/video/base/database/VideoEntity;->getItem_type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "history_online_video"

    iget-object v3, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v3}, Lcom/miui/video/base/database/VideoEntity;->getItem_type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    const-string v2, "module"

    const-string v3, "play_history"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "event"

    const-string v3, "play_history_card_click"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    :goto_0
    const-string v0, "module"

    const-string v2, "favorite"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "event"

    const-string v2, "favorite_card_click"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "heart"

    :cond_5
    :goto_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "item_id"

    iget-object v4, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v4}, Lcom/miui/video/base/database/VideoEntity;->getVideoId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "playlist_id"

    iget-object v4, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v4}, Lcom/miui/video/base/database/VideoEntity;->getPlaylistId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v1, v2, v4}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    :cond_6
    iget-object v1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/database/VideoEntity;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "UIVideoGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Entity.getTarget == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    const-string v2, "source"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    const-string v3, "source"

    invoke-static {v1, v3, v0}, Lcom/miui/video/framework/uri/LinkEntity;->replaceAccessTokenReg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/miui/video/base/database/VideoEntity;->setTarget(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/database/VideoEntity;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "source"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/VideoEntity;->setTarget(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "UIVideoGroup"

    invoke-static {v1, v0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/database/VideoEntity;->getTarget()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/database/VideoEntity;->getTargetAddition()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/miui/video/framework/uri/CUtils;->openLink(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;I)Z

    const-string v0, "UIVideoGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after add source Entity.getTarget == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/database/VideoEntity;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    :goto_3
    return-void
.end method

.method private refreshGroupChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mRow:Lcom/miui/video/common/feed/entity/RowEntity;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mRow:Lcom/miui/video/common/feed/entity/RowEntity;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/entity/RowEntity;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vCheck:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mRow:Lcom/miui/video/common/feed/entity/RowEntity;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/RowEntity;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method private static setDuration(Lcom/miui/video/base/database/VideoEntity;Landroid/widget/TextView;)V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/base/database/VideoEntity;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/base/database/VideoEntity;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/video/service/widget/ui/UIVideoGroup$3;

    invoke-direct {v1, p1, p0}, Lcom/miui/video/service/widget/ui/UIVideoGroup$3;-><init>(Landroid/widget/TextView;Lcom/miui/video/base/database/VideoEntity;)V

    invoke-static {v0, v1}, Lcom/miui/video/service/utils/VideoDurationHelper;->loadLoaclVideoDurationUseCodec(Ljava/lang/String;Lcom/miui/video/service/utils/VideoDurationHelper$LoadDurationListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/base/database/VideoEntity;->getDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/FormatUtils;->formatPlayTimeWithMillis(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setPlayProgress()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vProgress:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vBottomRightText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/database/VideoEntity;->getDuration()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/miui/video/common/library/utils/TimeStringUtils;->stringForTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vProgress:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/database/VideoEntity;->getPlayProgressPercentage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method private static setPlayProgress(Lcom/miui/video/base/database/VideoEntity;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/video/service/widget/ui/UIVideoGroup$4;

    invoke-direct {v0, p1, p0, p2}, Lcom/miui/video/service/widget/ui/UIVideoGroup$4;-><init>(Landroid/widget/TextView;Lcom/miui/video/base/database/VideoEntity;Landroid/widget/ProgressBar;)V

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setViews(Ljava/lang/Object;)V
    .locals 8

    instance-of v0, p1, Lcom/miui/video/base/database/VideoEntity;

    if-eqz v0, :cond_f

    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mType:I

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/miui/video/base/database/VideoEntity;

    iput-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    const-string p1, ""

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vIcon:Lcom/miui/video/common/feed/ui/card/UIImageView;

    sget v1, Lcom/miui/video/service/R$id;->v_icon:I

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vIcon:Lcom/miui/video/common/feed/ui/card/UIImageView;

    sget v0, Lcom/miui/video/service/R$id;->v_icon:I

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/database/VideoEntity;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/16 v1, 0x8

    const/4 v4, 0x0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vBottomRightText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vBottomRightText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v5}, Lcom/miui/video/base/database/VideoEntity;->getDuration()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/miui/video/common/library/utils/TimeStringUtils;->stringForTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vBottomRightText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/database/VideoEntity;->getAuthor_name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vInfo:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v5}, Lcom/miui/video/base/database/VideoEntity;->getAuthor_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/database/VideoEntity;->getVideo_count_text()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vInfo:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v5}, Lcom/miui/video/base/database/VideoEntity;->getVideo_count_text()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    iget-boolean v0, v0, Lcom/miui/video/base/database/VideoEntity;->isShowTimeline:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    iget-object v0, v0, Lcom/miui/video/base/database/VideoEntity;->timeLineText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vTimeLine:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vTimeLine:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    iget-object v5, v5, Lcom/miui/video/base/database/VideoEntity;->timeLineText:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vTimeLine:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    const-string v0, "favorite_playlist"

    iget-object v5, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v5}, Lcom/miui/video/base/database/VideoEntity;->getItem_type()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/database/VideoEntity;->getVideo_count_text()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vPlayListMask:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vPlayListMask:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/database/VideoEntity;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/database/VideoEntity;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vIcon:Lcom/miui/video/common/feed/ui/card/UIImageView;

    sget v0, Lcom/miui/video/service/R$drawable;->bg_default_video_2:I

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vIcon:Lcom/miui/video/common/feed/ui/card/UIImageView;

    sget v0, Lcom/miui/video/service/R$color;->c_bg_img_grey:I

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vIcon:Lcom/miui/video/common/feed/ui/card/UIImageView;

    sget v0, Lcom/miui/video/service/R$id;->v_icon:I

    iget-object v5, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v5}, Lcom/miui/video/base/database/VideoEntity;->getImgUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v0, v5}, Lcom/miui/video/common/feed/ui/card/UIImageView;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vIcon:Lcom/miui/video/common/feed/ui/card/UIImageView;

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/database/VideoEntity;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    sget v5, Lcom/miui/video/service/R$color;->c_bg_img_grey:I

    sget v6, Lcom/miui/video/service/R$drawable;->bg_default_video_2:I

    sget v7, Lcom/miui/video/service/R$drawable;->bg_default_video_2:I

    invoke-static {p1, v0, v5, v6, v7}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;III)V

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/database/VideoEntity;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vIcon:Lcom/miui/video/common/feed/ui/card/UIImageView;

    sget v0, Lcom/miui/video/service/R$id;->v_icon:I

    iget-object v5, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v5}, Lcom/miui/video/base/database/VideoEntity;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v0, v5}, Lcom/miui/video/common/feed/ui/card/UIImageView;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vIcon:Lcom/miui/video/common/feed/ui/card/UIImageView;

    sget v0, Lcom/miui/video/service/R$drawable;->bg_default_video_2:I

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vIcon:Lcom/miui/video/common/feed/ui/card/UIImageView;

    sget v0, Lcom/miui/video/service/R$color;->c_bg_img_grey:I

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->setBackgroundResource(I)V

    invoke-static {}, Lcom/miui/video/service/utils/VideoPosterHelper;->getInstance()Lcom/miui/video/service/utils/VideoPosterHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    iget-object v6, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vIcon:Lcom/miui/video/common/feed/ui/card/UIImageView;

    sget v7, Lcom/miui/video/service/R$drawable;->bg_default_video_2:I

    invoke-virtual {p1, v0, v5, v6, v7}, Lcom/miui/video/service/utils/VideoPosterHelper;->loadPoster(Landroid/content/Context;Lcom/miui/video/framework/base/entity/BaseEntity;Landroid/widget/ImageView;I)V

    :cond_9
    :goto_5
    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {p1}, Lcom/miui/video/base/database/VideoEntity;->getCPLogoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vCpIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vCpIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/database/VideoEntity;->getCPLogoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vCpIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/database/VideoEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-static {v0, v5}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {p1}, Lcom/miui/video/base/database/VideoEntity;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {p1}, Lcom/miui/video/base/database/VideoEntity;->isShowDuration()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_7

    :cond_b
    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_8

    :cond_c
    :goto_7
    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {p1}, Lcom/miui/video/base/database/VideoEntity;->getPlayProgress()J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-lez p1, :cond_e

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {p1}, Lcom/miui/video/base/database/VideoEntity;->getDuration()J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_d

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {p1}, Lcom/miui/video/base/database/VideoEntity;->getPath()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/miui/video/service/widget/ui/UIVideoGroup$1;

    invoke-direct {v0, p0}, Lcom/miui/video/service/widget/ui/UIVideoGroup$1;-><init>(Lcom/miui/video/service/widget/ui/UIVideoGroup;)V

    invoke-static {p1, v0}, Lcom/miui/video/service/utils/VideoDurationHelper;->loadLoaclVideoDurationUseCodec(Ljava/lang/String;Lcom/miui/video/service/utils/VideoDurationHelper$LoadDurationListener;)V

    goto :goto_8

    :cond_d
    invoke-direct {p0}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->setPlayProgress()V

    goto :goto_8

    :cond_e
    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vBottomRightText:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->setDuration(Lcom/miui/video/base/database/VideoEntity;Landroid/widget/TextView;)V

    :goto_8
    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->eClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vLayout:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/miui/video/service/widget/ui/UIVideoGroup$2;

    invoke-direct {v0, p0}, Lcom/miui/video/service/widget/ui/UIVideoGroup$2;-><init>(Lcom/miui/video/service/widget/ui/UIVideoGroup;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method public exitEditMode()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vCheck:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mType:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vCheck:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/database/VideoEntity;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/service/R$id;->v_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vLayout:Landroid/widget/RelativeLayout;

    sget v0, Lcom/miui/video/service/R$id;->v_icon:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/ui/card/UIImageView;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vIcon:Lcom/miui/video/common/feed/ui/card/UIImageView;

    sget v0, Lcom/miui/video/service/R$id;->v_new_icon:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vIconNew:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/service/R$id;->v_cp_icon:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vCpIcon:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/service/R$id;->v_bottom_mask:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vBottomMask:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/service/R$id;->v_play_list_bg:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vPlayListMask:Landroid/view/View;

    sget v0, Lcom/miui/video/service/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/service/R$id;->v_info:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vInfo:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/service/R$id;->v_date:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vDate:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/service/R$id;->v_check:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vCheck:Landroid/widget/CheckBox;

    sget v0, Lcom/miui/video/service/R$id;->v_progress:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vProgress:Landroid/widget/ProgressBar;

    sget v0, Lcom/miui/video/service/R$id;->v_child_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vChildLayout:Landroid/widget/LinearLayout;

    sget v0, Lcom/miui/video/service/R$id;->v_bottom_right_text:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vBottomRightText:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/service/R$id;->timeline:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vTimeLine:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->getStyle()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->setStyle(I)V

    return-void
.end method

.method public isEditModeEquals(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCheckedChange()V
    .locals 0

    return-void
.end method

.method public onLoadFinished(J)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/base/database/VideoEntity;->setDuration(J)V

    invoke-direct {p0}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->setPlayProgress()V

    return-void
.end method

.method public onUIHide()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->onUIHide()V

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onUIShow()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "favorite_video"

    iget-object v1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/database/VideoEntity;->getItem_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "favorite_playlist"

    iget-object v1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/database/VideoEntity;->getItem_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "history_online_video"

    iget-object v1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/database/VideoEntity;->getItem_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "favorite_video"

    iget-object v2, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/database/VideoEntity;->getItem_type()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "favorite_playlist"

    iget-object v2, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/database/VideoEntity;->getItem_type()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "history_local_video"

    iget-object v2, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/database/VideoEntity;->getItem_type()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "history_online_video"

    iget-object v2, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/database/VideoEntity;->getItem_type()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    const-string v1, "module"

    const-string v2, "play_history"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "event"

    const-string v2, "play_history_card_expose"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    :goto_0
    const-string v1, "module"

    const-string v2, "favorite"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "event"

    const-string v2, "favorite_card_expose"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "item_id"

    iget-object v3, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v3}, Lcom/miui/video/base/database/VideoEntity;->getVideoId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "playlist_id"

    iget-object v3, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v3}, Lcom/miui/video/base/database/VideoEntity;->getPlaylistId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "item_type"

    iget-object v3, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v3}, Lcom/miui/video/base/database/VideoEntity;->getItem_type()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v0, v1, v3}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    :cond_6
    return-void
.end method

.method public openEditMode()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vCheck:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mType:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->vCheck:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/database/VideoEntity;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->setViews(Ljava/lang/Object;)V

    const-string p1, "KEY_EDIT_MODE_OPEN"

    invoke-virtual {p0, p1}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->isEditModeEquals(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->openEditMode()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->exitEditMode()V

    :goto_0
    instance-of p1, p2, Lcom/miui/video/base/database/VideoEntity;

    if-eqz p1, :cond_1

    check-cast p2, Lcom/miui/video/base/database/VideoEntity;

    iput-object p2, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup;->mEntity:Lcom/miui/video/base/database/VideoEntity;

    :cond_1
    return-void
.end method
