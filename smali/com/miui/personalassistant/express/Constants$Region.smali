.class public interface abstract Lcom/miui/personalassistant/express/Constants$Region;
.super Ljava/lang/Object;
.source "Constants.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/express/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Region"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DIRECTORY:Ljava/lang/String; = "region"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PARENT:Ljava/lang/String; = "parent"

.field public static final POSTAL_CODE:Ljava/lang/String; = "postal_code"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://miui.personalassistant.express/region"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/personalassistant/express/Constants$Region;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
