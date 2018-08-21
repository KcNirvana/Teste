.class public Lcom/miui/personalassistant/loader/RequestLoader;
.super Ljava/lang/Object;
.source "RequestLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/loader/RequestLoader$Task;,
        Lcom/miui/personalassistant/loader/RequestLoader$RequestLoaderCallBack;
    }
.end annotation


# static fields
.field private static final REQUEST_DATA_LOADED:I = 0x0

.field public static final TAG:Ljava/lang/String; = "RequestLoader"


# instance fields
.field private mProgressListener:Lcom/miui/personalassistant/loader/ProgressListener;

.field private mRequestLoaderCallBack:Lcom/miui/personalassistant/loader/RequestLoader$RequestLoaderCallBack;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/loader/RequestLoader;)Lcom/miui/personalassistant/loader/RequestLoader$RequestLoaderCallBack;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/loader/RequestLoader;->mRequestLoaderCallBack:Lcom/miui/personalassistant/loader/RequestLoader$RequestLoaderCallBack;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/loader/RequestLoader;)Lcom/miui/personalassistant/loader/ProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/loader/RequestLoader;->mProgressListener:Lcom/miui/personalassistant/loader/ProgressListener;

    return-object v0
.end method


# virtual methods
.method public request(Lcom/miui/personalassistant/request/core/BaseRequest;Lcom/miui/personalassistant/request/core/BaseResult;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The request or result should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/miui/personalassistant/loader/RequestLoader$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/personalassistant/loader/RequestLoader$Task;-><init>(Lcom/miui/personalassistant/loader/RequestLoader;Lcom/miui/personalassistant/loader/RequestLoader$1;)V

    invoke-virtual {v0, p1, p2}, Lcom/miui/personalassistant/loader/RequestLoader$Task;->execute(Lcom/miui/personalassistant/request/core/BaseRequest;Lcom/miui/personalassistant/request/core/BaseResult;)V

    return-void
.end method

.method public setLoaderCallBack(Lcom/miui/personalassistant/loader/RequestLoader$RequestLoaderCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/loader/RequestLoader;->mRequestLoaderCallBack:Lcom/miui/personalassistant/loader/RequestLoader$RequestLoaderCallBack;

    return-void
.end method

.method public setOnProgressListener(Lcom/miui/personalassistant/loader/ProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/loader/RequestLoader;->mProgressListener:Lcom/miui/personalassistant/loader/ProgressListener;

    return-void
.end method
