.class public Lcom/miui/video/biz/player/online/plugin/cp/viu/util/SingleGson;
.super Ljava/lang/Object;
.source "SingleGson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/player/online/plugin/cp/viu/util/SingleGson$SingleHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/google/gson/Gson;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/SingleGson$SingleHolder;->instance:Lcom/google/gson/Gson;

    return-object v0
.end method
