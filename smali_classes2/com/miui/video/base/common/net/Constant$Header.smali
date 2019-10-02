.class public abstract Lcom/miui/video/base/common/net/Constant$Header;
.super Ljava/lang/Object;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/common/net/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Header"
.end annotation


# static fields
.field static final DIVIDER:Ljava/lang/String; = ":"

.field public static final INNER_IGNORE_COMMON_PARAM:Ljava/lang/String; = "Ignore-Common-Param:true"

.field public static final INNER_KEY_IGNORE_COMMON_PARAM:Ljava/lang/String; = "Ignore-Common-Param"

.field static final KEY_ACCEPT_RANGES:Ljava/lang/String; = "Accept-Ranges"

.field static final KEY_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field static final KEY_RANGES:Ljava/lang/String; = "Range"

.field static final VALUE_BYTES:Ljava/lang/String; = "bytes"

.field static final VALUE_NONE:Ljava/lang/String; = "none"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
