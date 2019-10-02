.class public final Lcom/miui/video/base/model/MediaData;
.super Ljava/lang/Object;
.source "MediaData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/base/model/MediaData$Settings;,
        Lcom/miui/video/base/model/MediaData$CP;,
        Lcom/miui/video/base/model/MediaData$AuthorInfo;,
        Lcom/miui/video/base/model/MediaData$PayLoad;,
        Lcom/miui/video/base/model/MediaData$Tag;,
        Lcom/miui/video/base/model/MediaData$Stuff;,
        Lcom/miui/video/base/model/MediaData$Program;,
        Lcom/miui/video/base/model/MediaData$DailyProgram;,
        Lcom/miui/video/base/model/MediaData$Episode;,
        Lcom/miui/video/base/model/MediaData$Media;
    }
.end annotation


# static fields
.field public static final CAT_CARTOON:Ljava/lang/String; = "cartoon"

.field public static final CAT_DOCUMENTARY:Ljava/lang/String; = "documentary"

.field public static final CAT_LIVE:Ljava/lang/String; = "live"

.field public static final CAT_MINI:Ljava/lang/String; = "mini"

.field public static final CAT_MOIVE:Ljava/lang/String; = "movie"

.field public static final CAT_TV:Ljava/lang/String; = "tv"

.field public static final CAT_VARIETY:Ljava/lang/String; = "variety"

.field public static final TYPE_LONGVIDEO:I = 0x2

.field public static final TYPE_SHORTVIDEO:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move p0, p1

    :goto_0
    return p0
.end method
