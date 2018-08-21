.class public interface abstract Lcom/miui/personalassistant/express/Constants$Database;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/express/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Database"
.end annotation


# static fields
.field public static final BASE_URI_STRING:Ljava/lang/String; = "content://miui.yellowpage/cache"

.field public static final COLUMN_CACHE_KEY:Ljava/lang/String; = "cache_key"

.field public static final COLUMN_REMARK:Ljava/lang/String; = "remark"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://miui.yellowpage/cache"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/personalassistant/express/Constants$Database;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
