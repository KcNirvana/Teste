.class public Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;
.super Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;
.source "PlayerImageFragment.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/IPlayerImageController;


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayerImageFragment"


# instance fields
.field private mImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;-><init>()V

    return-void
.end method

.method private createDetailData()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/entity/BaseEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->isFakeAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;

    invoke-direct {v2}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;-><init>()V

    sget v3, Lcom/miui/video/biz/videoplus/R$string;->plus_player_detail_file_location:I

    invoke-virtual {p0, v3}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->setDetail(Ljava/lang/String;)V

    sget v1, Lcom/miui/video/biz/videoplus/R$drawable;->icon_plus_place:I

    invoke-virtual {v2, v1}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->setIcon(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v1, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;

    invoke-direct {v1}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;-><init>()V

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->plus_player_detail_file_name:I

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->setTitle(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->setDetail(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/miui/video/framework/utils/FormatUtils;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "px"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->setExtras(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f8

    invoke-static {v2, v3}, Lcom/miui/video/biz/videoplus/player/ImageInfo;->parse(Ljava/lang/String;I)Lcom/miui/video/biz/videoplus/player/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/player/ImageInfo;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/player/ImageInfo;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/player/ImageInfo;->getMake()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/player/ImageInfo;->getMake()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_a

    new-instance v3, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;

    invoke-direct {v3}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;-><init>()V

    sget v4, Lcom/miui/video/biz/videoplus/R$string;->plus_player_detail_file_param:I

    invoke-virtual {p0, v4}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->setDetail(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/player/ImageInfo;->getfNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/player/ImageInfo;->getfNumber()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/player/ImageInfo;->getExposureTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/player/ImageInfo;->getExposureTime()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/player/ImageInfo;->getIso()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/player/ImageInfo;->getIso()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/player/ImageInfo;->getFocalLength()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/player/ImageInfo;->getFocalLength()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {v3, v1}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->setExtras(Ljava/util/List;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    new-instance v1, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;

    invoke-direct {v1}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;-><init>()V

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->plus_player_detail_file_path:I

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->setTitle(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->setDetail(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;

    invoke-direct {v1}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;-><init>()V

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->plus_player_detail_file_time:I

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->setTitle(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const-wide/16 v4, 0x3e8

    if-eqz v2, :cond_b

    sget-object v2, Lcom/miui/video/framework/utils/FormatUtils;->DATE_41:Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v6

    mul-long v6, v6, v4

    invoke-static {v2, v6, v7}, Lcom/miui/video/framework/utils/FormatUtils;->formatDate(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->setDetail(Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/text/SimpleDateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v6

    mul-long v6, v6, v4

    invoke-static {v2, v6, v7}, Lcom/miui/video/framework/utils/FormatUtils;->formatDate(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->setDetail(Ljava/lang/String;)V

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v6

    mul-long v6, v6, v4

    invoke-static {v6, v7}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->getWeekDayString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v6

    mul-long v6, v6, v4

    invoke-static {v6, v7, v3}, Lcom/miui/video/framework/utils/FormatUtils;->formatTime(JI)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->setExtras(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private initViewsWithData()V
    .locals 9

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getIsParsed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x7

    invoke-static {v0, v2}, Lcom/miui/video/biz/videoplus/player/ImageInfo;->parse(Ljava/lang/String;I)Lcom/miui/video/biz/videoplus/player/ImageInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/ImageInfo;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setWidth(I)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/ImageInfo;->getHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setHeight(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/player/ImageInfo;->parse(Ljava/lang/String;I)Lcom/miui/video/biz/videoplus/player/ImageInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/ImageInfo;->getRotation()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setRotation(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getRotation()I

    move-result v0

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getRotation()I

    move-result v0

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getHeight()I

    move-result v2

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getWidth()I

    move-result v2

    :goto_2
    move v4, v0

    move v5, v2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    invoke-virtual {v0, v4, v5}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->setProbablySize(II)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->isNeedEnterTransition()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getTransAnimBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide;->into(Ljava/lang/String;IILandroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/RequestListener;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    const/4 v2, 0x0

    invoke-static {v0, v4, v5, v1, v2}, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide;->into(Ljava/lang/String;IILandroid/widget/ImageView;Lcom/bumptech/glide/request/RequestListener;)V

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public bridge synthetic attachMediaController(Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->attachMediaController(Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;)V

    return-void
.end method

.method public bridge synthetic attachShareScreenController(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->attachShareScreenController(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;)V

    return-void
.end method

.method public bridge synthetic connectDevice(Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->connectDevice(Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;)V

    return-void
.end method

.method public bridge synthetic disconnectDevice()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->disconnectDevice()V

    return-void
.end method

.method public bridge synthetic enterPip()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->enterPip()V

    return-void
.end method

.method public getBaseRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->getBaseRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConnectedDevice()Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getConnectedDevice()Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    move-result-object v0

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_player_image_content:I

    return v0
.end method

.method protected getDetailViewId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_player_image_detail:I

    return v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getFoundDevices()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getFoundDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImageController()Lcom/miui/video/biz/videoplus/player/IPlayerImageController;
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getImageController()Lcom/miui/video/biz/videoplus/player/IPlayerImageController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPageName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getPageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuppMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->getSuppMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v0

    return-object v0
.end method

.method public getViewRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->getViewRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hideMoreDialog()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->hideMoreDialog()V

    return-void
.end method

.method public bridge synthetic initFindViews()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->initFindViews()V

    return-void
.end method

.method public bridge synthetic initViewsEvent()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->initViewsEvent()V

    return-void
.end method

.method public bridge synthetic isConnectedDevice()Z
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->isConnectedDevice()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isFragmentShowing()Z
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->isFragmentShowing()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isImage()Z
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->isImage()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isShareScreenServiceRunning()Z
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->isShareScreenServiceRunning()Z

    move-result v0

    return v0
.end method

.method public isShowingPhotoOnRemote()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->getShareScreenImageController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenImageController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->getShareScreenImageController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenImageController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenImageController;->isShowingPhotoOnRemote()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onAlphaChanged(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onAlphaChanged(F)V

    return-void
.end method

.method public bridge synthetic onBackPressed()Z
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public bridge synthetic onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDataChanged()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onDataChanged()V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->initViewsWithData()V

    return-void
.end method

.method public bridge synthetic onDeviceConnectFail(Lcom/milink/api/v1/type/ErrorCode;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onDeviceConnectFail(Lcom/milink/api/v1/type/ErrorCode;)V

    return-void
.end method

.method public onDeviceConnectSuccess()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onDeviceConnectSuccess()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->startShowPhotoOnRemote()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->showPhotoOnRemote(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDeviceDisconnected()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onDeviceDisconnected()V

    return-void
.end method

.method public bridge synthetic onDeviceListChanged()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onDeviceListChanged()V

    return-void
.end method

.method public onDoubleTap()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onEnterEditMode()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onEnterEditMode()V

    return-void
.end method

.method protected onEnterTransitionStart()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onEnterTransitionStart()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onExitCancel()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onExitCancel()V

    return-void
.end method

.method public bridge synthetic onExitConfirm()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onExitConfirm()V

    return-void
.end method

.method public bridge synthetic onExitEditMode()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onExitEditMode()V

    return-void
.end method

.method public bridge synthetic onExitStart()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onExitStart()V

    return-void
.end method

.method protected onFragmentHide(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onFragmentHide(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->isShowingPhotoOnRemote()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->stopShowPhotoOnRemote()V

    :cond_0
    return-void
.end method

.method protected onFragmentShow()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onFragmentShow()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;->setPreviewState()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->isConnectedDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->isShowingPhotoOnRemote()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->startShowPhotoOnRemote()V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->showPhotoOnRemote(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected onInflateContentView(Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;)V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->image_view:I

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->initViewsWithData()V

    return-void
.end method

.method protected onInflateDetailView(Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;)V
    .locals 3

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->createDetailData()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/videoplus/player/widget/adapter/SimpleAdapter;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/miui/video/biz/videoplus/player/widget/adapter/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->setAdapter(Lcom/miui/video/biz/videoplus/player/widget/adapter/IBaseAdapter;)V

    return-void
.end method

.method public bridge synthetic onLandscapeMode()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onLandscapeMode()V

    return-void
.end method

.method public bridge synthetic onPip(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onPip(Z)V

    return-void
.end method

.method public bridge synthetic onPortraitMode()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onPortraitMode()V

    return-void
.end method

.method public bridge synthetic onScrollBegin()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onScrollBegin()V

    return-void
.end method

.method public bridge synthetic onScrollEnd()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onScrollEnd()V

    return-void
.end method

.method public bridge synthetic onServiceStarted()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onServiceStarted()V

    return-void
.end method

.method public bridge synthetic onServiceStopped()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onServiceStopped()V

    return-void
.end method

.method public bridge synthetic onSingleTap()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onSingleTap()V

    return-void
.end method

.method public bridge synthetic onUserLockRotate()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onUserLockRotate()V

    return-void
.end method

.method public bridge synthetic onUserUnLockRotate()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onUserUnLockRotate()V

    return-void
.end method

.method public bridge synthetic onVolumeOrBrightChanged(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onVolumeOrBrightChanged(F)V

    return-void
.end method

.method public bridge synthetic onVolumeOrBrightEnd()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onVolumeOrBrightEnd()V

    return-void
.end method

.method public bridge synthetic onVolumeOrBrightStart(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onVolumeOrBrightStart(F)V

    return-void
.end method

.method public bridge synthetic processFragmentHide(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->processFragmentHide(Z)V

    return-void
.end method

.method public bridge synthetic processFragmentShow()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->processFragmentShow()V

    return-void
.end method

.method public bridge synthetic registerShareScreenServiceListener(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->registerShareScreenServiceListener(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;)V

    return-void
.end method

.method public bridge synthetic releaseShareScreenService()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->releaseShareScreenService()V

    return-void
.end method

.method public setContinuePlay(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setData(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->setData(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V

    return-void
.end method

.method public setEditMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->setEditMode(Z)V

    return-void
.end method

.method public setOnUpdateListener(Lcom/miui/video/biz/videoplus/player/widget/ITransformView$OnUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->setOnUpdateListener(Lcom/miui/video/biz/videoplus/player/widget/ITransformView$OnUpdateListener;)V

    return-void
.end method

.method public bridge synthetic setPlayerActivity(Lcom/miui/video/biz/videoplus/player/IPlayerActivity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->setPlayerActivity(Lcom/miui/video/biz/videoplus/player/IPlayerActivity;)V

    return-void
.end method

.method public bridge synthetic showMoreDialog(Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->showMoreDialog(Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;)V

    return-void
.end method

.method public showPhotoOnRemote(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->getShareScreenImageController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenImageController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->getShareScreenImageController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenImageController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenImageController;->showPhotoOnRemote(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic startShareScreenService()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->startShareScreenService()V

    return-void
.end method

.method public startShowPhotoOnRemote()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->getShareScreenImageController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenImageController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->getShareScreenImageController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenImageController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenImageController;->startShowPhotoOnRemote()V

    :cond_0
    return-void
.end method

.method public bridge synthetic stopShareScreenService()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->stopShareScreenService()V

    return-void
.end method

.method public stopShowPhotoOnRemote()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->getShareScreenImageController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenImageController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->getShareScreenImageController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenImageController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenImageController;->stopShowPhotoOnRemote()V

    :cond_0
    return-void
.end method

.method public bridge synthetic unRegisterShareScreenServiceListener(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->unRegisterShareScreenServiceListener(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;)V

    return-void
.end method

.method public updateSuppMatrix(Landroid/graphics/Matrix;)V
    .locals 13

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->updateSuppMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->isShowingPhotoOnRemote()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->getBaseRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->getViewRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float v12, v2, v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v5, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v5

    div-float/2addr v3, v12

    float-to-int v6, v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v4

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p1

    div-float/2addr v1, v12

    float-to-int v7, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p1

    mul-float p1, p1, v2

    float-to-int v8, p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p1

    mul-float p1, p1, v2

    float-to-int v9, p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-int v10, p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p1

    float-to-int v11, p1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v5

    move-object v4, p0

    invoke-virtual/range {v4 .. v12}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->zoomPhotoOnRemote(Ljava/lang/String;IIIIIIF)V

    :cond_0
    return-void
.end method

.method public zoomPhotoOnRemote(Ljava/lang/String;IIIIIIF)V
    .locals 10

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->getShareScreenImageController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenImageController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;->getShareScreenImageController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenImageController;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenImageController;->zoomPhotoOnRemote(Ljava/lang/String;IIIIIIF)V

    :cond_0
    return-void
.end method
