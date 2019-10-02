.class public interface abstract Lcom/miui/video/biz/videoplus/db/framework/greendao/MigrationHelper$ReCreateAllTableListener;
.super Ljava/lang/Object;
.source "MigrationHelper.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/db/framework/greendao/MigrationHelper$UpdateNewColumValueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/db/framework/greendao/MigrationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReCreateAllTableListener"
.end annotation


# virtual methods
.method public abstract onCreateAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
.end method

.method public abstract onDropAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
.end method
