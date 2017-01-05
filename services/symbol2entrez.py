import click
import mygene as mg
#import pandas

@click.command()
@click.option('symbols', '--symbol', multiple=True)
def convert(symbols):
    mv = mg.MyGeneInfo()
    result = mv.querymany(symbols, scopes = 'symbol', fields='symbol,entrezgene', as_dataframe= True, species=9606, verbose = False)
    result = result[['entrezgene','symbol']].to_json(orient = 'records')
    click.echo(result)

if __name__ == '__main__':
    convert()