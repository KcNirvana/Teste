.class public Lcom/miui/home/launcher/assistant/module/QuickStartFunctionGroup;
.super Ljava/lang/Object;
.source "QuickStartFunctionGroup.java"


# static fields
.field public static final PACKAGENAME_ALIPAH_SDK_FORMI:Ljava/lang/String; = "com.alipay.sdk.formi"


# instance fields
.field private array:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/model/FunctionLaunch;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/model/FunctionLaunch;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/QuickStartFunctionGroup;->array:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/QuickStartFunctionGroup;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setArray(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/model/FunctionLaunch;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/QuickStartFunctionGroup;->array:Ljava/util/ArrayList;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/QuickStartFunctionGroup;->title:Ljava/lang/String;

    return-void
.end method
