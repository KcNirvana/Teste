.class public interface abstract Lcom/miui/personalassistant/express/Constants$Cache;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/express/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Cache"
.end annotation


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field public static final ALL_COLUMNS:[Ljava/lang/String;

.field public static final CACHE_KEY:Ljava/lang/String; = "cache_key"

.field public static final CACHE_KEY_PREFIX:Ljava/lang/String; = "inquiry_history_item"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DIRECTORY:Ljava/lang/String; = "cache"

.field public static final ETAG:Ljava/lang/String; = "etag"

.field public static final REMARK:Ljava/lang/String; = "remark"

.field public static final SOURCE_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "content://miui.yellowpage/cache"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/personalassistant/express/Constants$Cache;->SOURCE_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://miui.personalassistant.express/cache"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/personalassistant/express/Constants$Cache;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "cache_key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "content"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "etag"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "account_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "remark"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/personalassistant/express/Constants$Cache;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method
