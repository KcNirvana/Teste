.class public interface abstract annotation Lcom/ali/user/mobile/rpc/RpcMonitor;
.super Ljava/lang/Object;
.source "RpcMonitor.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/ali/user/mobile/rpc/RpcMonitor;
        appId = "20000008"
        behavior = "event"
        externalParams = {
            "token"
        }
        param1 = ""
        param3 = ""
        resultType = 0x1
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract appId()Ljava/lang/String;
.end method

.method public abstract behavior()Ljava/lang/String;
.end method

.method public abstract externalParams()[Ljava/lang/String;
.end method

.method public abstract operationType()Ljava/lang/String;
.end method

.method public abstract param1()Ljava/lang/String;
.end method

.method public abstract param3()Ljava/lang/String;
.end method

.method public abstract resultType()I
.end method

.method public abstract seedId()Ljava/lang/String;
.end method

.method public abstract userCaseId()Ljava/lang/String;
.end method
