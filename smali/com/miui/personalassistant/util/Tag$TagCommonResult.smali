.class public final Lcom/miui/personalassistant/util/Tag$TagCommonResult;
.super Ljava/lang/Object;
.source "Tag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/util/Tag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TagCommonResult"
.end annotation


# static fields
.field public static final KEY_CODE:Ljava/lang/String; = "code"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final KEY_RESULT:Ljava/lang/String; = "result"

.field public static final KEY_VER:Ljava/lang/String; = "ver"

.field public static final VALUE_CODE_OK:I = 0x0

.field public static final VALUE_CODE_REQUIRE_UPGRADE:I = 0x3eb

.field public static final VALUE_CODE_TOO_MANY_REQUEST:I = 0x3ed

.field public static final VALUE_CODE_UNKNOWN_ERROR:I = 0x7cf

.field public static final VALUE_CODE_UUID_ERROR:I = 0x3ec


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
