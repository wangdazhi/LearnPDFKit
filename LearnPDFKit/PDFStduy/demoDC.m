//
//  demoDC.m
//  PDFStduy
//
//  Created by wangdazhitech on 3/26/14.
//  Copyright (c) 2014 wangdazhi. All rights reserved.
//

#import "demoDC.h"

@implementation demoDC

- (id)init
{
    self = [super init];
    if (self) {
        // Add your subclass-specific initialization here.
    }
    return self;
}

- (NSString *)windowNibName
{
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"demoDC";
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
    [super windowControllerDidLoadNib:aController];
    
    if (_pdf_document) {
       // [_document_view setPDFDocument:_pdf_document];
       [mainPDFView setDocument:_pdf_document];
    }
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError
{
    // Insert code here to write your document to data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning nil.
    // You can also choose to override -fileWrapperOfType:error:, -writeToURL:ofType:error:, or -writeToURL:ofType:forSaveOperation:originalContentsURL:error: instead.
    if (outError) {
        *outError = [NSError errorWithDomain:NSOSStatusErrorDomain code:unimpErr userInfo:nil];
    }
    return nil;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError
{
    // Insert code here to read your document from the given data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning NO.
    // You can also choose to override -readFromFileWrapper:ofType:error: or -readFromURL:ofType:error: instead.
    // If you override either of these, you should also override -isEntireFileLoaded to return NO if the contents are lazily loaded.
    if (outError) {
        //*outError = [NSError errorWithDomain:NSOSStatusErrorDomain code:unimpErr userInfo:nil];
        //return NO;
      //  NSLog(@"%@",*outError);
    }
    
    if ([typeName isEqualToString:@"PDF Document"]) {
        _originalPDFData = data;
      //  [self setFileURL:nil];  // causes document to be "untitled" and otherwise
        // act like a brand new document. e.g. file->save
        // pops the save-as dialog
    }
    _pdf_document = [[PDFDocument alloc] initWithData:_originalPDFData];
    if (nil == _pdf_document) {
        // report error
       // DLog(@"error with PDF format!\n");
        return NO;
    }

    
    return YES;
}

+ (BOOL)autosavesInPlace
{
    return YES;
}

@end
