.class public Lnet/sqlcipher/CursorWrapper;
.super Landroid/database/CursorWrapper;
.source "CursorWrapper.java"

# interfaces
.implements Lnet/sqlcipher/Cursor;


# instance fields
.field private final mCursor:Lnet/sqlcipher/Cursor;


# direct methods
.method public constructor <init>(Lnet/sqlcipher/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    iput-object p1, p0, Lnet/sqlcipher/CursorWrapper;->mCursor:Lnet/sqlcipher/Cursor;

    return-void
.end method


# virtual methods
.method public getType(I)I
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/CursorWrapper;->mCursor:Lnet/sqlcipher/Cursor;

    invoke-interface {v0, p1}, Lnet/sqlcipher/Cursor;->getType(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWrappedCursor()Landroid/database/Cursor;
    .locals 1

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWrapper;->getWrappedCursor()Lnet/sqlcipher/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedCursor()Lnet/sqlcipher/Cursor;
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/CursorWrapper;->mCursor:Lnet/sqlcipher/Cursor;

    return-object v0
.end method
