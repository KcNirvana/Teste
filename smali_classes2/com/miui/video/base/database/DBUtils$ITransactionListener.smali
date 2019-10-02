.class public interface abstract Lcom/miui/video/base/database/DBUtils$ITransactionListener;
.super Ljava/lang/Object;
.source "DBUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/database/DBUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ITransactionListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onTransaction(Lcom/miui/video/base/database/TableEntity;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/database/TableEntity;",
            "TT;I)V"
        }
    .end annotation
.end method
