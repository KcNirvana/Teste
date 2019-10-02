.class public interface abstract Lcom/kaltura/playkit/LocalDataStore;
.super Ljava/lang/Object;
.source "LocalDataStore.java"


# virtual methods
.method public abstract load(Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method

.method public abstract save(Ljava/lang/String;[B)V
.end method
