.class public interface abstract annotation Lio/github/prototypez/appjoint/core/ModuleSpec;
.super Ljava/lang/Object;
.source "ModuleSpec.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lio/github/prototypez/appjoint/core/ModuleSpec;
        priority = 0x3e8
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract priority()I
.end method
