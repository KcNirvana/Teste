.class public Lcom/miui/personalassistant/config/WebConfig;
.super Ljava/lang/Object;
.source "WebConfig.java"


# static fields
.field private static final HOST_ONLINE:Ljava/lang/String; = "http://api.assistant.miui.com"

.field public static final URL_BASKETBALL:I = 0x2

.field public static final URL_FOOTBALL:I = 0x1

.field private static final sUrlArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/miui/personalassistant/config/WebConfig;->sUrlArray:Landroid/util/SparseArray;

    sget-object v0, Lcom/miui/personalassistant/config/WebConfig;->sUrlArray:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string/jumbo v2, "/football?"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/miui/personalassistant/config/WebConfig;->sUrlArray:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string/jumbo v2, "/basketball?"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUrl(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://api.assistant.miui.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/miui/personalassistant/config/WebConfig;->sUrlArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
