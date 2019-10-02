.class Lcom/miui/video/common/browser/feature/base/FeatureBase$1;
.super Ljava/lang/Object;
.source "FeatureBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/common/browser/feature/base/FeatureBase;->callExtensionMethod(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/common/browser/feature/base/FeatureBase;

.field final synthetic val$e:Ljava/lang/reflect/InvocationTargetException;


# direct methods
.method constructor <init>(Lcom/miui/video/common/browser/feature/base/FeatureBase;Ljava/lang/reflect/InvocationTargetException;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/browser/feature/base/FeatureBase$1;->this$0:Lcom/miui/video/common/browser/feature/base/FeatureBase;

    iput-object p2, p0, Lcom/miui/video/common/browser/feature/base/FeatureBase$1;->val$e:Ljava/lang/reflect/InvocationTargetException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/browser/feature/base/FeatureBase$1;->val$e:Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/AssertionError;

    throw v0
.end method
